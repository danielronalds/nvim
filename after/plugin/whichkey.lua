-- Contains all my keybindings, translated into whichkey
local wk = require("which-key")

wk.register({
    p = {
        name = "Project View",
        v = { "<cmd>Ex<CR>", "Open project view in netrw" },
    },

    f = {
        name = "Find",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        g = { "<cmd>Telescope git_files<cr>", "Find Git Files" },
        w = { "<cmd>Telescope live_grep<CR>", "Find Word using Live Grep" }
    },

    s = {
        name = "Splits",
        h = { "<cmd>Hex<cr>", "Split Horizontally" }, -- create a binding with label
        v = { "<cmd>Vex!<cr>", "Split Vertically" }, -- create a binding with label
    },

    c = {
        name = "Cargo Shortcuts",
        r = { "<cmd>FloatermNew --autoclose=0 cargo run<CR>", "Run cargo project" },
        t = { "<cmd>FloatermNew --autoclose=0 cargo test<CR>", "Run cargo test" },
        c = { "<cmd>FloatermNew --autoclose=0 cargo clippy<CR>", "Run cargo clippy" },
    },

    g = {
        name = "Git Integration",
        g = { "<cmd>LazyGit<CR>", "Launch LazyGit in floating window" },
        s = { "<cmd>Telescope git_status<CR>", "View git status with telescope" },
    },

    t = {
        name = "Floating terminal",
        t = { "<cmd>FloatermNew<CR>", "Launch a floating terminal session" },
        h = { "<cmd> lua require('nvterm.terminal').new 'horizontal'<CR>", "Launch a horizontal terminal" },
        v = { "<cmd> lua require('nvterm.terminal').new 'vertical'<CR>", "Launch a vertical terminal" }
    },

    l = {
        name = "LSP Stuff",
        f = { "<cmd>lua vim.lsp.buf.format()<CR>", "Format file using LSP" },
        s = { "<cmd>Telescope lsp_document_symbols<CR>", "View Document Symbols" },
        d = { "<cmd>Telescope diagnostics<CR>", "View LSP Diagnostics" },
    },

    m = {
        name = "Harpoon",
        m = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", "Open Marks Menu" },
        a = { "<cmd>lua require('harpoon.mark').add_file()<CR>", "Add the current file" },
        n = { "<cmd>lua require('harpoon.ui').nav_next()<CR>", "Go to next marked file" },
        p = { "<cmd>lua require('harpoon.ui').nav_prev()<CR>", "Go to previous marked file" }
    },

}, { prefix = "<leader>" })
