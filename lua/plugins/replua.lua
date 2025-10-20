return {
    "mghaight/replua.nvim",
    opts = {
        keymaps = {
            eval_line = "<leader>rl",
            eval_block = nil, -- disable
            eval_buffer = "<leader>ra",
        },
    },
    keys = {
        { "<leader>ro", "<cmd>RepluaOpen<cr>", desc = "Open REPL" },
    }
}
