local nnoremap = require("danielr.keymap").nnoremap

-- Open netrw
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- Open a file horizontally (split horizontal)
nnoremap("<leader>sh", "<cmd>Sexplore<CR>")

-- Open a file vertically (split vertically)
nnoremap("<leader>sv", "<cmd>Vexplore<CR>")

-- Open telescopes find files
nnoremap("<leader>ff", "<cmd>Telescope find_files<CR>")

-- Open up git status
nnoremap("<leader>gs", "<cmd>Telescope git_status<CR>")
