return  {
  'nvim-lualine/lualine.nvim',
  config = function()
    require("lualine").setup({
      options = {
        disabled_filetypes = {
          "NvimTree",
        },
      },
      sections = {
        lualine_a = {},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', '', 'filetype'},
        lualine_y = {},
        lualine_z = {'location'}
      },
    })
  end 
}

