local M = {}

M.is_mac = vim.uv.os_uname().sysname == "Darwin"
M.is_linux = vim.uv.os_uname().sysname == "Linux"

return M
