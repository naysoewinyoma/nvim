return  {
  'nvim-lualine/lualine.nvim',
  opts = {
    extensions = {
      "nvim-tree",
    },
    sections = {
      lualine_a = {},
      lualine_b = {'branch', "filename", 'diff', 'diagnostics'},
      lualine_c = {},
      lualine_x = {'encoding', '', 'filetype'},
      lualine_y = {},
      lualine_z = {'location'}
    },
  }
}

