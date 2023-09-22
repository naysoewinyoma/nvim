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
        separator = true,
        highlight = "Directory",
      }},
      numbers = "buffer_id",
      diagnostics = "nvim_lsp",
    }
  },
}
