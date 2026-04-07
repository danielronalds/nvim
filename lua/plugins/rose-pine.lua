return {
    "rose-pine/neovim",
    name = "rose-pine",
    enabled = require("danielr.platform").is_mac,
    lazy = false,
    priority = 1000,
    opts = {
        styles = {
            italic = false,
        },
        highlight_groups = {
            Normal = { bg = "NONE" },
            NormalNC = { bg = "NONE" },
            NormalFloat = { bg = "NONE" },
        },
    },
    config = function(_, opts)
        require("rose-pine").setup(opts)

        vim.cmd("colorscheme rose-pine")
    end,
}
