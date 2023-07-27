-- Look and feel
vim.opt.termguicolors = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "100"
--vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
-- vim.opt.cursorline = true

-- Spell Checking
--vim.opt.spell = true

-- Indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- No wraping
vim.opt.wrap = false

-- No swap files
 vim.cmd[[set noswapfile]]

-- Hidden "https://medium.com/usevim/vim-101-set-hidden-f78800142855#:~:text=Typing%20%3Aset%20hidden%20will%20change,be%20hidden%20instead%20of%20closed"
vim.opt.hidden = true

-- Searching
vim.opt.incsearch = true

-- Misc
vim.opt.errorbells = false

-- Setting the leader key to space
vim.g.mapleader = " "
