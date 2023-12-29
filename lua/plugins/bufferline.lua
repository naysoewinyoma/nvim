vim.opt.termguicolors = true

return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  opts = {
    options = {
      offsets = {{
        filetype = "NvimTree",
        text_align = "left",
      }},
      numbers = "buffer_id",
      diagnostics = "nvim_lsp",
      disabled_filetypes = {
        statusline = {
          "dapui_watches",
          "dapui_stacks",
          "dapui_breakpoints",
          "dapui_scopes",
        },
      },
    }
  },
}
