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
                { section = "keys", gap = 1, padding = 1 },
                { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = { 1, 1 } },
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
        rename = { enabled = true },
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
        { "<leader>f",  function() Snacks.picker.files() end,          desc = "Find Files" },
        { "<leader>b",  function() Snacks.picker.buffers() end,        desc = "Search Buffers" },
        { "<leader>lg", function() Snacks.picker.grep() end,           desc = "Open LiveGrep" },
        { "<leader>ls", function() Snacks.picker.lsp_symbols() end,    desc = "Open LSP Symbols" },
        { "gr",         function() Snacks.picker.lsp_references() end, desc = "Search References" },
        { "<leader>ld", function() Snacks.picker.diagnostics() end,    desc = "Open Diagnostics" }
    },
    config = function(_, opts)
        require("snacks").setup(opts)

        -- Setting up oil intergration with renaming
        vim.api.nvim_create_autocmd("User", {
            pattern = "OilActionsPost",
            callback = function(event)
                if event.data.actions.type == "move" then
                    Snacks.rename.on_rename_file(event.data.actions.src_url, event.data.actions.dest_url)
                end
            end,
        })
    end
}
