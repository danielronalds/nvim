-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- Themes
    use 'rmehri01/onenord.nvim'

    -- Icons
    use 'nvim-tree/nvim-web-devicons'

    -- Fuzzyfinder(Telescope)
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { 'stevearc/dressing.nvim' }

    -- Autopairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- Git signs
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }

    -- alpha
    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require 'alpha'.setup(require 'alpha.themes.startify'.config)
        end
    }

    -- WhichKey
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                window = {
                    border = "none",
                    margin = { 0, 0, 0, 0 },  -- extra window margin [top, right, bottom, left]
                    padding = { 0, 0, 0, 0 }, -- extra window padding [top, right, bottom, left]
                },
                ignore_missing = true,

                -- Hides the marks keybinding
                hidden = { "require" }
            }
        end
    }

    -- Harpoon
    use "ThePrimeagen/harpoon"

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- todo-comments
    use {
        "folke/todo-comments.nvim",
        requires = { "nvim-lua/plenary.nvim" },
    }

    -- LazyGit
    use 'kdheepak/lazygit.nvim'

    -- FloatTerm
    use 'voldikss/vim-floaterm'
    -- nvterm
    use {
        "NvChad/nvterm",
        config = function()
            require("nvterm").setup()
        end,
    }

    -- Completition
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/cmp-nvim-lsp"
    use "saadparwaiz1/cmp_luasnip"
    -- Snippets
    use "L3MON4D3/LuaSnip"
    use "rafamadriz/friendly-snippets"

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    -- Status bar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
end)
