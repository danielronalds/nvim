return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        bigfile = {
            enabled = true
        },
        bufdelete = { enabled = false },
        dashboard = {
            enabled = true,
            sections = {
                { section = "header" },
                { section = "keys", gap = 1 },
                { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = { 2, 2 } },
                { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 2 },
                { section = "startup" },
            },

        },
        debug = { enabled = false },
        dim = { enabled = false },
        explorer = { enabled = false },
        git = { enabled = false },
        gitbrowse = { enabled = false },
        image = {
            enabled = true
        },
        indent = { enabled = false },
        input = {
            enabled = true
        },
        layout = { enabled = false },
        lazygit = { enabled = false },
        notifier = {
            enabled = true
        },
        picker = {
            enabled = true
        },
        profiler = { enabled = false },
        quickfile = {
            enabled = true
        },
        rename = { enabled = false },
        scope = { enabled = false },
        scratch = { enabled = false },
        scroll = { enabled = false },
        statuscolumn = { enabled = false },
        terminal = { enabled = false },
        toggle = { enabled = false },
        win = { enabled = false },
        words = { enabled = false },
        zen = { enabled = false },
    },
    keys = {
        -- Picker keybinds
        { "<leader>f",  function() Snacks.picker.files() end,           desc = "Find Files" },
        { "<leader>b",  function() Snacks.picker.buffers() end,         desc = "Search Buffers" },
        { "<leader>lg", function() Snacks.picker.grep() end,            desc = "Open LiveGrep" },
        { "<leader>ls", function() Snacks.picker.lsp_symbols() end,     desc = "Open LiveGrep" },
        { "gr",         function() Snacks.picker.lsp_references() end,  desc = "Search References" }
    }
}
