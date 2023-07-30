-- Packer, manually install it:
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim \
--   ~/.config/nvim/pack/packer/start/packer.nvim
return require("packer").startup(function()
    use "wbthomason/packer.nvim"
    use 'nvim-lualine/lualine.nvim'
    use {
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons",
        },
    }
    use {
        "nvim-telescope/telescope.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
        },
        branch = "0.1.x",
    }
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make'
    }
    use "lewis6991/gitsigns.nvim"
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        run = ":MasonUpdate" -- :MasonUpdate updates registry contents
    }
    use "nvim-treesitter/nvim-treesitter-textobjects"

    -- lsp config
    -- use "fatih/vim-go"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/nvim-cmp"
    use "neovim/nvim-lspconfig"
    use({
        "L3MON4D3/LuaSnip",
        tag = "v1.*",
    })

    use "numToStr/Comment.nvim"
    use {
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'
    }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use "windwp/nvim-ts-autotag"
    -- Github copilot
    use "github/copilot.vim"
    use "jose-elias-alvarez/null-ls.nvim"

    -- Install without configuration
    use({ 'projekt0n/github-nvim-theme' })

    -- Lua
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    use "lukas-reineke/indent-blankline.nvim"
end)
