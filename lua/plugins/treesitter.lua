return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    init = function()
        local ensure_installed = {
            "bash",
            "c",
            "c_sharp",
            "cpp",
            "css",
            "elixir",
            "go",
            "gomod",
            "gosum",
            "html",
            "java",
            "javascript",
            "lua",
            "markdown",
            "php",
            "python",
            "query",
            "ruby",
            "rust",
            "templ",
            "tsx",
            "typescript",
            "vim",
            "vimdoc",
            "vue",
        }

        local already_installed = require("nvim-treesitter.config").get_installed()
        local parsers_to_install = vim.iter(ensure_installed)
            :filter(function(parser)
                return not vim.tbl_contains(already_installed, parser)
            end)
            :totable()

        if #parsers_to_install > 0 then
            require("nvim-treesitter").install(parsers_to_install)
        end

        vim.api.nvim_create_autocmd("FileType", {
            callback = function()
                pcall(vim.treesitter.start)
                vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end,
}
