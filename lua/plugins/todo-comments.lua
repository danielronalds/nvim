return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    opts = {},
    keys = {
        { "<leader>pp", function() Snacks.picker.todo_comments() end, desc = "Open Todo" },
    }
}
