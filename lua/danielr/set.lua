-- Look and feel
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "100"
vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"

-- Indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false

-- Refresh buffer when changed externally
vim.opt.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = { "*" }
})

-- Searching
vim.opt.incsearch = true

-- Misc
vim.opt.errorbells = false

vim.filetype.add({
    extension = {
        cshtml = "razor",
    },
})
