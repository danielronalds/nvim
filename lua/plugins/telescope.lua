return {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
        require("telescope").setup()

        local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader>f", function() builtin.find_files() end)
        vim.keymap.set("n", "<leader>b", function() builtin.buffers() end)
        vim.keymap.set("n", "<leader>lg", function() builtin.live_grep() end)
    end
}
