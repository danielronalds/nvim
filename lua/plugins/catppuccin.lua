return {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    opts = {
        transparent_background = true,
    },
    config = function(_, opts)
        require("catppuccin").setup(opts)

        -- load the colorscheme here
        vim.cmd("colorscheme catppuccin-frappe")
    end,
}
