local function trimWhitespace()
    MiniTrailspace.trim()
    Snacks.notify.info("Trimmed whitespace", { title = "MiniTrailspace" })
end

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
        event = { "BufReadPre", "BufNewFile" },
        keys = {
            { "<leader>tw", trimWhitespace, desc = "Trim Whitespace" }
        }
    },
}
