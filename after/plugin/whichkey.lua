-- Contains all my keybindings, translated into whichkey
local wk = require("which-key")

wk.setup {}

wk.add({
    mode = { "n", "v" },
    { "<leader>b",  "<cmd>Telescope buffers theme=ivy<cr>",                        desc = "Find Buffer" },
    { "<leader>f",  "<cmd>Telescope find_files theme=ivy<cr>",                     desc = "Find Files" },
    { "<leader>t",  "<cmd>FloatermNew<CR>",                                             desc = "Open Floating Terminal" },
    { "<leader>o",  group = "Open" },
    { "<leader>ot", "<cmd>lua require('nvterm.terminal').toggle 'horizontal'<CR>",      desc = "Open Horizontal Terminal" },
    { "<leader>oT", "<cmd>lua require('nvterm.terminal').toggle 'vertical'<CR>",        desc = "Open Vertical Terminal" },
    { "<leader>op", "<cmd>NvimTreeFocus<CR>",                                           desc = "Focus Project Tree" },
    { "<leader>p",  group = "Project Management" },
    { "<leader>pp", "<cmd>TodoTelescope theme=ivy<CR>",                            desc = "Open Project Todos" },
    { "<leader>pv", "<cmd>Oil<CR>",                                                     desc = "Open Oil" },
    { "<leader>pt", "<cmd>FloatermNew --autoclose=0 tasks<CR>",                         desc = "Open Project Tasks" },
    { "<leader>s",  group = "Splits" },
    { "<leader>sv", "<cmd>lua vim.cmd('vsplit | wincmd l'); require('oil').open()<cr>", desc = "Split Vertically" },
    { "<leader>sh", "<cmd>lua vim.cmd('split | wincmd j'); require('oil').open()<cr>",  desc = "Split Horizontally" },
    { "<leader>m",  group = "Harpoon" },
    { "<leader>mp", "<cmd>lua require('harpoon.ui').nav_prev()<CR>",                    desc = "Move to previous mark" },
    { "<leader>mn", "<cmd>lua require('harpoon.ui').nav_next()<CR>",                    desc = "Move to next mark" },
    { "<leader>mm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>",           desc = "Open Harpoon Menu" },
    { "<leader>ma", "<cmd>lua require('harpoon.mark').add_file()<CR>",                  desc = "Add file to marks" },
    { "<leader>g",  group = "Git Integration" },
    { "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>",                      desc = "Toggle current line blame" },
    { "<leader>gs", "<cmd>Telescope git_status theme=ivy<CR>",                     desc = "Open Git Status in Telescope" },
    { "<leader>gg", "<cmd>LazyGit<CR>",                                                 desc = "Open LazyGit" },
    { "<leader>l",  group = "LSP Stuff" },
    { "<leader>lf", "<cmd>lua vim.lsp.buf.format()<CR>",                                desc = "Format Buffer" },
    { "<leader>ld", "<cmd>Telescope diagnostics theme=ivy<CR>",                    desc = "Open diagnostics in Telescope" },
    { "<leader>lg", "<cmd>Telescope live_grep<CR>",                                     desc = "Open live grep" },
    { "<leader>ls", "<cmd>Telescope lsp_document_symbols theme=ivy<CR>",           desc = "Open Symbols in Telescope" },
})
