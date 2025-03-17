-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- Themes
    use { "catppuccin/nvim", as = "catppuccin" }
    use "folke/tokyonight.nvim"
    use { "ellisonleao/gruvbox.nvim" }

    -- Transparent background
    use 'xiyaowong/transparent.nvim'

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

    -- oil
    use { "stevearc/oil.nvim" }

    -- NVIM tree
    use { "nvim-tree/nvim-tree.lua" }

    -- WhichKey
    use {
        "folke/which-key.nvim",
        requires = { {"echasnovski/mini.icons"} }
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

    -- Debugging
    use {
        "mfussenegger/nvim-dap",
        requires = {
            {'leoluz/nvim-dap-go'},
            {'mfussenegger/nvim-dap-python'},
            {'mrcjkb/rustaceanvim'},
            {'linux-cultist/venv-selector.nvim', branch='regexp'},
            {'rcarriga/nvim-dap-ui'},
            {'theHamsta/nvim-dap-virtual-text'},
            {'nvim-neotest/nvim-nio'},
            {'williamboman/mason.nvim'},
        }
    }

    -- LazyGit
    use 'kdheepak/lazygit.nvim'

    -- FloatTerm
    use 'voldikss/vim-floaterm'
    -- nvterm
    use {
        "NvChad/nvterm",
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
