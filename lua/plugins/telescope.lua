return {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = true,
    config = function()
        require("telescope").setup()

        local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader>f", function() builtin.find_files() end)
        vim.keymap.set("n", "<leader>h", function() print("hello") end)
    end
}
