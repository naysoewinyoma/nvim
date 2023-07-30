local ok, telescope = pcall(require, "telescope")
if not ok then return end

telescope.load_extension('fzf')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {desc = "find files"})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "live grep"})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {desc = "buffers"})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "help tags"})
vim.keymap.set('n', '<leader>fx', builtin.treesitter, {desc = "treesitter"})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {desc = "git branches"})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {desc = "git status"})
