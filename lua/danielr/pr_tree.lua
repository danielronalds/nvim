local M = {}

local function get_pr_files(pr)
    local cmd = { "gh", "pr", "view" }
    if pr then
        table.insert(cmd, tostring(pr))
    end
    vim.list_extend(cmd, { "--json", "files", "-q", ".files[].path" })

    local result = vim.system(cmd, { text = true }):wait()
    if result.code ~= 0 then
        vim.notify("gh pr view failed: " .. (result.stderr or ""), vim.log.levels.ERROR)
        return nil
    end

    local files = {}
    for line in (result.stdout or ""):gmatch("[^\r\n]+") do
        if line ~= "" then
            files[#files + 1] = line
        end
    end
    return files
end

local function build_tree(files, cwd)
    local nodes = {}
    local root = {
        file = cwd,
        text = "",
        dir = true,
        open = true,
        sort = "",
    }

    local function ensure_dir(relpath)
        if relpath == "" then
            return root
        end
        if nodes[relpath] then
            return nodes[relpath]
        end
        local parent_path = relpath:match("(.*)/[^/]+$") or ""
        local parent = ensure_dir(parent_path)
        local basename = relpath:match("[^/]+$") or relpath
        local item = {
            file = cwd .. "/" .. relpath,
            text = relpath,
            dir = true,
            open = true,
            parent = parent,
            sort = parent.sort .. "!" .. basename .. " ",
        }
        nodes[relpath] = item
        return item
    end

    for _, f in ipairs(files) do
        local parent_path = f:match("(.*)/[^/]+$") or ""
        ensure_dir(parent_path)
    end

    local file_items = {}
    for _, f in ipairs(files) do
        local parent_path = f:match("(.*)/[^/]+$") or ""
        local parent = ensure_dir(parent_path)
        local basename = f:match("[^/]+$") or f
        local item = {
            file = cwd .. "/" .. f,
            text = f,
            parent = parent,
            sort = parent.sort .. "#" .. basename .. " ",
        }
        nodes[f] = item
        file_items[#file_items + 1] = item
    end

    local children = {}
    for _, item in pairs(nodes) do
        children[item.parent] = children[item.parent] or {}
        table.insert(children[item.parent], item)
    end

    for _, kids in pairs(children) do
        table.sort(kids, function(a, b) return a.sort < b.sort end)
        kids[#kids].last = true
    end

    local out = { root }
    local function visit(node)
        for _, kid in ipairs(children[node] or {}) do
            out[#out + 1] = kid
            if kid.dir then
                visit(kid)
            end
        end
    end
    visit(root)
    return out
end

function M.open(pr)
    local files = get_pr_files(pr)
    if not files then return end
    if #files == 0 then
        vim.notify("No files in PR", vim.log.levels.WARN)
        return
    end

    local cwd = vim.fn.getcwd()
    local items = build_tree(files, cwd)

    for _, picker in ipairs(Snacks.picker.get()) do
        if picker.opts.source ~= "pr_tree" then
            picker:close()
        end
    end

    Snacks.picker.pick({
        source = "pr_tree",
        title = pr and ("PR #" .. pr) or "Current PR",
        finder = function() return items end,
        format = "file",
        formatters = { file = { filename_only = true } },
        layout = { preset = "sidebar", preview = false },
        sort = { fields = { "sort" } },
        matcher = { sort_empty = false, fuzzy = false, keep_parents = true },
        focus = "list",
        auto_close = false,
        jump = { close = false },
    })
end

return M
