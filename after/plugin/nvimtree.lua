vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]

require("nvim-tree").setup({
  update_focused_file = {
      enable = true,
      update_cwd = true,
  },
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
    side = 'right',
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})
