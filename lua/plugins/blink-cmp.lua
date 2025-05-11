return {
    "saghen/blink.cmp",
    version = '1.*',
    opts = {
        keymap = {
            preset = 'default',
            ['<CR>'] = { 'select_and_accept' },
            ['<Tab>'] = { 'select_next', 'fallback' },
            ['<S-Tab>'] = { 'select_prev', 'fallback' },
        },
        appearence = {
            nerd_font_varient = "mono"
        },
        sources = {
            default = { 'lsp', 'path', 'snippets', 'buffer' },
        },
    }
}
