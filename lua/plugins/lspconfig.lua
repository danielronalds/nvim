-- Function for toggling virtual line diagnostics
local function toggle_virtual_line_diagnostics()
    local config = vim.diagnostic.config()

    config.virtual_text = not config.virtual_text
    config.virtual_lines = not config.virtual_lines

    vim.diagnostic.config(config)

    if config.virtual_lines then
        Snacks.notify.info("Enabled Virtual Lines", { title = "LSP" })
    else
        Snacks.notify.info("Disabled Virtual Lines", { title = "LSP" })
    end
end

return {
    'neovim/nvim-lspconfig',
    config = function()
        vim.lsp.enable({
            "lua_ls",
            "solargraph",
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

        vim.diagnostic.config({
            virtual_text = true,
            underline = true,
            signs = {
                text = {
                    [vim.diagnostic.severity.ERROR] = "󰅚 ",
                    [vim.diagnostic.severity.WARN] = "󰀪 ",
                    [vim.diagnostic.severity.INFO] = "󰋽 ",
                    [vim.diagnostic.severity.HINT] = "󰌶 ",
                },
            },
        })

        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function()
                vim.keymap.set("n", "<F2>", function() vim.lsp.buf.rename() end, { desc = "Rename Symbol" })
                vim.keymap.set("n", "<F3>", function()
                    vim.lsp.buf.format()
                    Snacks.notify.info("Formated Buffer", { title = "LSP" })
                end, { desc = "Format file" })
                vim.keymap.set("n", "<F4>", function() vim.lsp.buf.code_action() end, { desc = "Format file" })
                vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end)
                vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
                vim.keymap.set("n", "<leader>d", toggle_virtual_line_diagnostics, { desc = "Show diagnostic" })
            end
        })
    end,
}
