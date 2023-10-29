local nnoremap = require("danielr.keymap").nnoremap


-- Open netrw
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- Open a file horizontally (split horizontal)
nnoremap("<leader>sh", "<cmd>Hex<CR>")

-- Open a file vertically (split vertically)
nnoremap("<leader>sv", "<cmd>Vex!<CR>")

-- Vertical movements
-- Centers the screen after Ctrl + D and Ctrl + U (theprimeagen tip)
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

-- LazyGit
nnoremap("<leader>gg", "<cmd>LazyGit<CR>")
-- Open up git status
nnoremap("<leader>gs", "<cmd>Telescope git_status<CR>")

-- Cargo shortcuts
-- Float term so you get syntax highlighting for the results
nnoremap("<leader>cr", "<cmd>FloatermNew --autoclose=0 cargo run<CR>")
nnoremap("<leader>ct", "<cmd>FloatermNew --autoclose=0 cargo test<CR>")
nnoremap("<leader>cc", "<cmd>FloatermNew --autoclose=0 cargo clippy<CR>")

-- Show Floating Term
nnoremap("<leader>tt", "<cmd>FloatermNew<CR>")

-- LSP
-- Show Documentation
nnoremap("K", "<cmd>lua vim.lsp.buf.hover()<CR>")
-- Goto Definition
nnoremap("gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
-- Goto references
-- nnoremap("gr", "<cmd>lua vim.lsp.buf.references()<CR>")
nnoremap("gr", "<cmd>Telescope lsp_references<CR>")
-- LSP Format
nnoremap("<leader>lf", "<cmd>lua vim.lsp.buf.format()<CR>")
-- LSP Document Symbols
nnoremap("<leader>ls", "<cmd>Telescope lsp_document_symbols<CR>")

-- Telescope
-- Open telescopes live grep
nnoremap("<leader>lg", "<cmd>Telescope live_grep<CR>")

-- Open LSP Diagnostics
nnoremap("<leader>ld", "<cmd>Telescope diagnostics<CR>")

-- Harpoon
-- Showing menu
nnoremap("<leader>mm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>")

-- Adding and removing marks
nnoremap("<leader>ma", "<cmd>lua require('harpoon.mark').add_file()<CR>")
nnoremap("<leader>mr", "<cmd>lua require('harpoon.mark').rm_file()<CR>")

-- Cycling marks
nnoremap("<leader>mn", "<cmd>lua require('harpoon.ui').nav_next()<CR>")
nnoremap("<leader>mp", "<cmd>lua require('harpoon.ui').nav_prev()<CR>")

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
