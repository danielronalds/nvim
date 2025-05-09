return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' },
    },
    config = function()
        local lsp_zero = require('lsp-zero')

        lsp_zero.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp_zero.default_keymaps({ buffer = bufnr })
        end)

        local lsp_zero_config = {
            call_servers = 'global',
        }

        lsp_zero.set_preferences(lsp_zero_config)

        local lspconfig = require("lspconfig")

        -- Lua server
        lspconfig.lua_ls.setup({})

        -- Rust server (Done by rust-tools)
        lspconfig.rust_analyzer.setup({})

        -- C/C++ server
        lspconfig.clangd.setup({})

        -- Go server
        lspconfig.gopls.setup({})

        -- Nix server
        lspconfig.nixd.setup({})

        -- Haskell
        lspconfig.hls.setup({})

        -- Typescript server
        lspconfig.ts_ls.setup({})

        -- Python 3 server
        lspconfig.pyright.setup({})

        -- Java
        lspconfig.jdtls.setup({})

        -- Tailwind CSS
        lspconfig.tailwindcss.setup({})
    end
}
