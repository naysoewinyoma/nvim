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

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

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
require("utils")

-- keys mapping
vim.keymap.set("n", "<leader>tf", ":Neotest run<CR>") -- run test

-- local function git_branch()
--     local branch = vim.fn.system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
--     if string.len(branch) > 0 then
--         return branch
--     else
--         return ":"
--     end
-- end

-- local function statusline()
--     local set_color_1 = "%#PmenuSel#"
--     local branch = git_branch()
--     local set_color_2 = "%#LineNr#"
--     local file_name = " %f"
--     local modified = "%m"
--     local align_right = "%="
--     local fileencoding = " %{&fileencoding?&fileencoding:&encoding}"
--     local linecol = " %l:%c"
--
--     return string.format(
--         "%s %s %s%s%s%s%s%s",
--         set_color_1,
--         branch,
--         set_color_2,
--         file_name,
--         modified,
--         align_right,
--         fileencoding,
--         linecol
--     )
-- end
--
-- vim.opt.statusline = statusline()
