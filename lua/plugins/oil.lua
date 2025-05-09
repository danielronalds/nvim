return {
    "stevearc/oil.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons", opts = {} },
    keys = {
        { "<leader>pv", function() require("oil").open() end, desc = "Open Oil" },
        { "<leader>sv", "<cmd>lua vim.cmd('vsplit | wincmd l'); require('oil').open()<cr>", desc = "Open Oil VSplit" },
        { "<leader>sh", "<cmd>lua vim.cmd('split | wincmd j'); require('oil').open()<cr>", desc = "Open Oil HSplit" },
    },
    opts = {},
}
