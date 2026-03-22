local M = {}

local DEFAULT = "100"

local overrides = {
    markdown = "80",
    text = "60",
}

function M.get(filetype)
    filetype = filetype or vim.bo.filetype
    return overrides[filetype] or DEFAULT
end

return M
