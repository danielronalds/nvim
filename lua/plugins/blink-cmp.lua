return {
    "saghen/blink.cmp",
    version = '1.*',
    opts = {
        keymap = {
            preset = 'default',
            ['<CR>'] = { 'select_and_accept', 'fallback' },
            ['<Tab>'] = { 'select_next', 'fallback' },
            ['<S-Tab>'] = { 'select_prev', 'fallback' },
        },
        appearance = {
            nerd_font_variant = "mono"
        },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
    }
}
