return {
    "mistweaverco/kulala.nvim",
    lazy = true,
    ft = { "http", "rest" },
    --opts = {
    --    global_keymaps = false,
    --    global_keymaps_prefix = "<leader>R",
    --    kulala_keymaps_prefix = "",
    --},
    keys = {
        { "<leader>Rs", desc = "Send request" },
        { "<leader>Ra", desc = "Send all requests" },
        { "<leader>Rb", desc = "Open scratchpad" },
    },
}
