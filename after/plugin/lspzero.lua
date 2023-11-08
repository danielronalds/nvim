local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

local lsp_zero_config = {
    call_servers = 'global',
}

lsp_zero.set_preferences(lsp_zero_config)

-- Lua server
require('lspconfig').lua_ls.setup({})

-- Rust server
require('lspconfig').rust_analyzer.setup({})

-- Nix server
require('lspconfig').nixd.setup({})

-- Typescript
require'lspconfig'.tsserver.setup{}
