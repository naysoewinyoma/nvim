local present, catppuccin = pcall(require, "catppuccin")
if not present then return end

vim.opt.termguicolors = true

vim.cmd.colorscheme "catppuccin"
