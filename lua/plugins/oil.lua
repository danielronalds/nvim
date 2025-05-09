return {
    "stevearc/oil.nvim",
    lazy = false,
    dependencies = { "echasnovski/mini.icons", version = "*" },
    config = function()
        local oil = require("oil")

        oil.setup({
            default_file_explore = true,

            columns = {
                "icon",
                -- "permissions",
                -- "size",
                -- "mtime",
            },
        })

        vim.keymap.set("n", "<leader>pv", function() oil.open() end)
        vim.keymap.set("n", "<leader>sv", "<cmd>lua vim.cmd('vsplit | wincmd l'); require('oil').open()<cr>")
        vim.keymap.set("n", "<leader>sh", "<cmd>lua vim.cmd('split | wincmd j'); require('oil').open()<cr>")
    end
}
