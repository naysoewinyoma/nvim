local ok, catppuccin = pcall(require, "catppuccin")
if not ok then return end

vim.opt.termguicolors = true

vim.cmd.colorscheme "catppuccin"
