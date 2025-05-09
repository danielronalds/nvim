--local harpoon = require('harpoon.ui')

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

-- Goto references
--nnoremap("gr", "<cmd>Telescope lsp_references theme=dropdown<CR>")

-- Switching to specific marks
--vim.keymap.set("n", "<leader>1", function() harpoon.nav_file(1) end)
--vim.keymap.set("n", "<leader>2", function() harpoon.nav_file(2) end)
--vim.keymap.set("n", "<leader>3", function() harpoon.nav_file(3) end)
--vim.keymap.set("n", "<leader>4", function() harpoon.nav_file(4) end)
--vim.keymap.set("n", "<leader>5", function() harpoon.nav_file(5) end)
--vim.keymap.set("n", "<leader>6", function() harpoon.nav_file(6) end)
--vim.keymap.set("n", "<leader>7", function() harpoon.nav_file(7) end)
--vim.keymap.set("n", "<leader>8", function() harpoon.nav_file(8) end)
--vim.keymap.set("n", "<leader>9", function() harpoon.nav_file(9) end)
--vim.keymap.set("n", "<leader>0", function() harpoon.nav_file(0) end)
