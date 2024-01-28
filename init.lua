vim.g.mapleader = " "

vim.opt.encoding="utf-8"
vim.opt.compatible=false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.laststatus = 2
vim.opt.spelllang="en_us"
vim.opt.autoindent=true
vim.opt.textwidth=120
vim.opt.clipboard="unnamed"
vim.opt.scrollbind=false
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2
vim.opt.wrap = false
vim.opt.termguicolors = true

-- Customize netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- vim.g.netrw_liststyle = 3
-- vim.g.netrw_list_hide = ".git"
-- vim.g.netrw_keepdir = 0

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
require("customize")

-- keys mapping
vim.keymap.set("n", "<leader>tf", ":Neotest run<CR>") -- run test
