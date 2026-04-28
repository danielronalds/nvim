return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        bigfile = { enabled = true },
        dashboard = {
            enabled = true,
            sections = {
                { section = "header" },
                { section = "keys", gap = 1, padding = 1 },
                { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = { 1, 1 } },
                { section = "startup" },
            },
        },
        explorer = { enabled = true },
        image = { enabled = false },
        input = { enabled = true },
        notifier = { enabled = true },
        picker = {
            enabled = true,
            hidden = true,
            sources = {
                files = {
                    hidden = true,
                }
            }
        },
        quickfile = { enabled = true },
        rename = { enabled = true },
        zen = {
            enabled = true,
            win = { width = 80 },
            on_open = function()
                vim.opt_local.colorcolumn = ""
            end,
            on_close = function()
                vim.opt_local.colorcolumn = require("danielr.colorcolumn").get()
            end,
        },
    },
    keys = {
        -- Picker keybinds
        { "<leader>f",  function() Snacks.picker.files() end,          desc = "Find Files" },
        { "<leader>e",  function()
            for _, picker in ipairs(Snacks.picker.get()) do
                if picker.opts.source ~= "explorer" then picker:close() end
            end
            Snacks.explorer()
        end,                                                            desc = "File Explorer" },
        { "<leader>b",  function() Snacks.picker.buffers() end,        desc = "Search Buffers" },
        { "<leader>g",  function() Snacks.picker.grep() end,           desc = "Open Grep" },
        { "<leader>G",  function() Snacks.picker.git_status() end,     desc = "Open Changed Files" },
        { "<leader>ls", function() Snacks.picker.lsp_symbols() end,    desc = "Open LSP Symbols" },
        { "gr",         function() Snacks.picker.lsp_references() end, desc = "Search References" },
        { "<leader>ld", function() Snacks.picker.diagnostics() end,    desc = "Open Diagnostics" },
        { "<leader>r",  function() Snacks.zen() end,                  desc = "Reading Mode" }
    },
    config = function(_, opts)
        opts.dashboard.preset = {
            keys = {
                { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
                { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
                { icon = " ", key = "G", desc = "Changed Files", action = ":lua Snacks.picker.git_status()" },
                { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
                { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
                { icon = " ", key = "s", desc = "Restore Session", section = "session" },
                { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
                { icon = "󰢛 ", key = "M", desc = "Mason", action = ":Mason", enabled = package.loaded.lazy ~= nil },
                { icon = " ", key = "q", desc = "Quit", action = ":qa" },
            },
        }

        require("snacks").setup(opts)

        -- Setting up oil intergration with renaming
        vim.api.nvim_create_autocmd("User", {
            pattern = "OilActionsPost",
            callback = function(event)
                if event.data.actions.type == "move" then
                    Snacks.rename.on_rename_file(event.data.actions.src_url, event.data.actions.dest_url)
                end
            end,
        })
    end
}
