return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = true,
    opts = {},
    keys = {
        { "<leader>f",  function() require("telescope.builtin").find_files() end, desc = "Find Files" },
        { "<leader>b",  function() require("telescope.builtin").buffers() end,    desc = "Search Buffers" },
        { "<leader>lg", function() require("telescope.builtin").live_grep() end,  desc = "Open LiveGrep" },
    }
}
