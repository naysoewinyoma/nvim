-- Packer, manually install it:
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim \
--   ~/.config/nvim/pack/packer/start/packer.nvim
return require("packer").startup(function()
    use "wbthomason/packer.nvim"          -- https://github.com/wbthomason/packer.nvim
    use { "catppuccin/nvim", as = "catppuccin" } -- https://github.com/catppuccin/nvim
    use 'nvim-lualine/lualine.nvim'
    use {
        "nvim-tree/nvim-tree.lua",          -- https://github.com/nvim-tree/nvim-tree.lua
        requires = {
            "nvim-tree/nvim-web-devicons",    -- https://github.com/nvim-tree/nvim-web-devicons
        },
    }
    use {
        "nvim-telescope/telescope.nvim", -- https://github.com/nvim-telescope/telescope.nvim
        requires = {
            "nvim-lua/plenary.nvim",
        },
        branch = "0.1.x",
    }
    use { 
        'nvim-telescope/telescope-fzf-native.nvim', 
        run = 'make'
    }
    use "lewis6991/gitsigns.nvim"             -- https://github.com/lewis6991/gitsigns.nvim
    use {
        "nvim-treesitter/nvim-treesitter",      -- https://github.com/nvim-treesitter/nvim-treesitter
        run = ":TSUpdate"
    }
    use "nvim-treesitter/nvim-treesitter-textobjects" -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
    use "fatih/vim-go"                        -- https://github.com/fatih/vim-go
    use "hrsh7th/cmp-nvim-lsp"                -- https://github.com/hrsh7th/cmp-nvim-lsp
    use "hrsh7th/nvim-cmp"                    -- https://github.com/hrsh7th/nvim-cmp
    use "neovim/nvim-lspconfig"               -- https://github.com/neovim/nvim-lspconfig
    use "onsails/lspkind-nvim"                -- https://github.com/onsails/lspkind-nvim
    use "numToStr/Comment.nvim"               -- https://github.com/numToStr/Comment.nvim
    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v1.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    })
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
    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate" -- :MasonUpdate updates registry contents
    }
end)
