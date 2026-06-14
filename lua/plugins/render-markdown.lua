return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    ft = { 'markdown' },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
        render_modes = { 'n', 'c', 't', 'i' },
        completions = { lsp = { enabled = true } },
        code = {
            highlight_inline = 'MarkdownInlineCode',
        },
    },
    init = function()
        local function setInlineCodeHighlight()
            vim.api.nvim_set_hl(0, 'MarkdownInlineCode', { fg = '#e0af68' })
        end

        vim.api.nvim_create_autocmd('ColorScheme', { callback = setInlineCodeHighlight })
        setInlineCodeHighlight()
    end,
}
