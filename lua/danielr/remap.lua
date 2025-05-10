vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- Vertical movements
-- Centers the screen after Ctrl + D and Ctrl + U (theprimeagen tip)
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- LSP
-- Show Documentation
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end)
-- Goto Definition
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
