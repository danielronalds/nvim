return {
    {
        'echasnovski/mini.pairs',
        version = '*',
        opts = {},
    },
    {
        'echasnovski/mini.trailspace',
        version = '*',
        opts = {},
        keys = {
            { "<leader>tw", function()
                MiniTrailspace.trim()
                Snacks.notify.info("Trimmed whitespace", { title = "MiniTrailspace" })
            end, desc = "Trim Whitespace" }
        }
    },
}
