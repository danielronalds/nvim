local nnoremap = require("danielr.keymap").nnoremap


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- Vertical movements
-- Centers the screen after Ctrl + D and Ctrl + U (theprimeagen tip)
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

-- LSP
-- Show Documentation
nnoremap("K", "<cmd>lua vim.lsp.buf.hover()<CR>")
-- Goto Definition
nnoremap("gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
-- Goto references
nnoremap("gr", "<cmd>Telescope lsp_references theme=dropdown<CR>")

-- Escaping the terminal
vim.api.nvim_set_keymap('t','<C-x>',  '<C-\\><C-n>',  {noremap = true})

-- Switching to specific marks
nnoremap("<leader>1", "<cmd>:lua require('harpoon.ui').nav_file(1)<CR>")
nnoremap("<leader>2", "<cmd>:lua require('harpoon.ui').nav_file(2)<CR>")
nnoremap("<leader>3", "<cmd>:lua require('harpoon.ui').nav_file(3)<CR>")
nnoremap("<leader>4", "<cmd>:lua require('harpoon.ui').nav_file(4)<CR>")
nnoremap("<leader>5", "<cmd>:lua require('harpoon.ui').nav_file(5)<CR>")
nnoremap("<leader>6", "<cmd>:lua require('harpoon.ui').nav_file(6)<CR>")
nnoremap("<leader>7", "<cmd>:lua require('harpoon.ui').nav_file(7)<CR>")
nnoremap("<leader>8", "<cmd>:lua require('harpoon.ui').nav_file(8)<CR>")
nnoremap("<leader>9", "<cmd>:lua require('harpoon.ui').nav_file(9)<CR>")
nnoremap("<leader>0", "<cmd>:lua require('harpoon.ui').nav_file(0)<CR>")
