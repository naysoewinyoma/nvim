return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = {
          "c",
          "go",
          "lua",
          "vim",
          "javascript",
          "typescript",
          "html",
        },
        auto_install = true,
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {},
  },
  "github/copilot.vim",
  "nvimtools/none-ls.nvim",
  {
    "projekt0n/github-nvim-theme",
    config = function()
      require("github-theme").setup({})
      vim.cmd [[colorscheme github_dark_dimmed]]
    end
  },
  {
    "andythigpen/nvim-coverage",
    config = function()
      require("coverage").setup({})
    end
  },
  "vim-test/vim-test",
}
