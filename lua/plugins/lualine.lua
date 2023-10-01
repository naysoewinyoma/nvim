return  {
  'nvim-lualine/lualine.nvim',
  opts = {
    -- options = {
    --   disabled_filetypes = {
    --     "NvimTree",
    --   },
    -- },
    extensions = {
      "nvim-tree",
    },
    sections = {
      lualine_a = {},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {},
      lualine_x = {'encoding', '', 'filetype'},
      lualine_y = {},
      lualine_z = {'location'}
    },
  }
}

