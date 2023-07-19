-- Packer, manually install it:
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim \
--   ~/.config/nvim/pack/packer/start/packer.nvim
return require("packer").startup(function()
    use "wbthomason/packer.nvim"          
    use { "catppuccin/nvim", as = "catppuccin" } 
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
    use "nvim-treesitter/nvim-treesitter-textobjects" 
    use "fatih/vim-go"                        
    use "hrsh7th/cmp-nvim-lsp"               
    use "hrsh7th/nvim-cmp"                  
    use "neovim/nvim-lspconfig"            
    use "onsails/lspkind-nvim"            
    use "numToStr/Comment.nvim"               
    use({
        "L3MON4D3/LuaSnip",
        tag = "v1.*", 
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
    -- Set Github copilot
    use "github/copilot.vim"
end)
