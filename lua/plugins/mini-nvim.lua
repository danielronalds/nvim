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
            { "<leader>tw", function() MiniTrailspace.trim() end, desc = "Trim Whitespace" }
        }
    },
}
