local nnoremap = require("danielr.keymap").nnoremap

-- Open netrw
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- Open a file horizontally (split horizontal)
nnoremap("<leader>sh", "<cmd>Hex<CR>")

-- Open a file vertically (split vertically)
nnoremap("<leader>sv", "<cmd>Vex!<CR>")

-- Open telescopes find files
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")

-- Open telescopes live grep
nnoremap("<leader>lg", "<cmd>Telescope live_grep<CR>")

-- Open up git status
nnoremap("<leader>gs", "<cmd>Telescope git_status<CR>")

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
nnoremap("<leader>m1", "<cmd>:lua require('harpoon.ui').nav_file(1)<CR>")
nnoremap("<leader>m2", "<cmd>:lua require('harpoon.ui').nav_file(2)<CR>")
nnoremap("<leader>m3", "<cmd>:lua require('harpoon.ui').nav_file(3)<CR>")
nnoremap("<leader>m4", "<cmd>:lua require('harpoon.ui').nav_file(4)<CR>")
nnoremap("<leader>m5", "<cmd>:lua require('harpoon.ui').nav_file(5)<CR>")
nnoremap("<leader>m6", "<cmd>:lua require('harpoon.ui').nav_file(6)<CR>")
nnoremap("<leader>m7", "<cmd>:lua require('harpoon.ui').nav_file(7)<CR>")
nnoremap("<leader>m8", "<cmd>:lua require('harpoon.ui').nav_file(8)<CR>")
nnoremap("<leader>m9", "<cmd>:lua require('harpoon.ui').nav_file(9)<CR>")
nnoremap("<leader>m0", "<cmd>:lua require('harpoon.ui').nav_file(0)<CR>")
