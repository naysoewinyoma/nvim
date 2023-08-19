return  {
  'nvim-lualine/lualine.nvim',
  config = function()
    require("lualine").setup({
      sections = {
        lualine_a = {},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {},
        lualine_x = {'encoding', '', 'filetype'},
        lualine_y = {},
        lualine_z = {'location'}
      },
    })
  end 
}

