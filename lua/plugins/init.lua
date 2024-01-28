return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
  },
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  -- auto completation
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/nvim-cmp",
  {
    "L3MON4D3/LuaSnip",
    version = "2.*",
  },
  {
    'numToStr/Comment.nvim',
    opts = {},
    lazy = false,
  },
  "nvim-pack/nvim-spectre",
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} ,
  },
  "github/copilot.vim",
  "nvimtools/none-ls.nvim",
  {
    "projekt0n/github-nvim-theme",
    config = function() 
      require("github-theme").setup({})

      vim.cmd[[colorscheme github_dark_dimmed]]
    end
  },
  "sindrets/diffview.nvim",
  "mfussenegger/nvim-dap",
  "leoluz/nvim-dap-go",
  "rcarriga/nvim-dap-ui"
}
