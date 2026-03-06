return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        "mason-org/mason.nvim",
        "neovim/nvim-lspconfig",
    },
    opts = {
        automatic_enable = true,
        ensure_installed = {
            "lua_ls",
            "solargraph",
            "rust_analyzer",
            "tailwindcss",
            "jdtls",
            "pyright",
            "ts_ls",
            "gopls",
            "clangd",
            "templ",
            "elixirls",
            "vue_ls",
            "intelephense",
        },
    },
}
