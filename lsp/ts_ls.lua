local vue_typescript_plugin_path = vim.fn.stdpath("data")
    .. "/mason/packages/vue-language-server/node_modules/@vue/typescript-plugin"

return {
    filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact", "vue" },
    init_options = {
        plugins = {
            {
                name = "@vue/typescript-plugin",
                location = vue_typescript_plugin_path,
                languages = { "vue" },
            },
        },
    },
}
