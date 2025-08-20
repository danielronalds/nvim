return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
    keys = {
        { "<leader>pp", function() Snacks.picker.todo_comments() end, desc = "Open Todo" },
    }
}
