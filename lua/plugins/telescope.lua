return {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
  dependencies = { 
    'nvim-lua/plenary.nvim',
    { 
      'nvim-telescope/telescope-fzf-native.nvim', 
      build = 'make' 
    }
  },
  config = function() 
    require('telescope').load_extension('fzf')
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "find files"})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "live grep"})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "buffers"})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "help tags"})
    vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {desc = "help tags"})
    vim.keymap.set('n', '<leader>fx', builtin.treesitter, {desc = "treesitter"})
  end
}
