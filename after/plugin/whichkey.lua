-- Contains all my keybindings, translated into whichkey
local wk = require("which-key")

wk.register({
    p = {
        name = "Project Management",
        -- Project problems
        p = {"<cmd>TodoTelescope theme=dropdown<CR>", "Open Todo Comments in telescope"},
        -- Project View
        v = { "<cmd>Oil<CR>", "Open project view in oil" },
        -- Project Tasks
        t = { "<cmd>FloatermNew --autoclose=0 tasks<CR>", "Display project tasks" },
    },

    f = { "<cmd>Telescope find_files theme=dropdown<cr>", "Find Files" },

    s = {
        name = "Splits",
        h = { "<cmd>lua vim.cmd('split | wincmd j'); require('oil').open()<cr>", "Open Oil Horizontally" }, -- create a binding with label
        v = { "<cmd>lua vim.cmd('vsplit | wincmd l'); require('oil').open()<cr>", "Open Oil Vertically" }, -- create a binding with label
    },

    c = {
        name = "Cargo Shortcuts",
        r = { "<cmd>FloatermNew --autoclose=0 cargo run<CR>", "Run cargo project" },
        t = { "<cmd>FloatermNew --autoclose=0 cargo test<CR>", "Run cargo test" },
        -- c = { "<cmd>FloatermNew --autoclose=0 cargo clippy<CR>", "Run cargo clippy" },
        c = { "<cmd> lua require('nvterm.terminal').send('bacon -j clippy', 'vertical')<CR>", "Run cargo clippy in bacon" }
    },

    g = {
        name = "Git Integration",
        g = { "<cmd>LazyGit<CR>", "Launch LazyGit in floating window" },
        s = { "<cmd>Telescope git_status theme=dropdown<CR>", "View git status with telescope" },
    },

    t = {
        name = "Terminal",
        t = { "<cmd>FloatermNew<CR>", "Launch a floating terminal session" },
        h = { "<cmd> lua require('nvterm.terminal').new 'horizontal'<CR>", "Launch a horizontal terminal" },
        v = { "<cmd> lua require('nvterm.terminal').new 'vertical'<CR>", "Launch a vertical terminal" }
    },

    l = {
        name = "LSP Stuff",
        f = { "<cmd>lua vim.lsp.buf.format()<CR>", "Format file using LSP" },
        s = { "<cmd>Telescope lsp_document_symbols theme=dropdown<CR>", "View Document Symbols" },
        d = { "<cmd>Telescope diagnostics theme=dropdown<CR>", "View LSP Diagnostics" },
    },

    m = {
        name = "Harpoon",
        m = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", "Open Marks Menu" },
        a = { "<cmd>lua require('harpoon.mark').add_file()<CR>", "Add the current file" },
        n = { "<cmd>lua require('harpoon.ui').nav_next()<CR>", "Go to next marked file" },
        p = { "<cmd>lua require('harpoon.ui').nav_prev()<CR>", "Go to previous marked file" }
    },

}, { prefix = "<leader>" })
