local nnoremap = require("danielr.keymap").nnoremap

-- Open netrw
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- Open a file horizontally (split horizontal)
nnoremap("<leader>sh", "<cmd>Sexplore<CR>")

-- Open a file vertically (split vertically)
nnoremap("<leader>sv", "<cmd>Vexplore<CR>")
