return {
    'neovim/nvim-lspconfig',
    config = function()
        vim.lsp.enable({
            "lua_ls",
            "rust_analyzer",
            "tailwindcss",
            "jdtls",
            "pyright",
            "ts_ls",
            "hls",
            "nixd",
            "gopls",
            "clangd",
        })

        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function()
                vim.keymap.set("n", "<F2>", function() vim.lsp.buf.rename() end, { desc = "Rename Symbol" })
                vim.keymap.set("n", "<F3>", function() vim.lsp.buf.format() end, { desc = "Format file" })
                vim.keymap.set("n", "<F4>", function() vim.lsp.buf.code_action() end, { desc = "Format file" })
                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end)
                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
                vim.keymap.set("n", "<leader>d", function() vim.diagnostic.open_float() end, { desc = "Show diagnostic" })
            end
        })
    end,
}
