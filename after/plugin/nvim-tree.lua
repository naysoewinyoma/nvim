local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then return end

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
vim.keymap.set("n", "<leader>b", ":NvimTreeFindFile<CR>") -- focus file explorer


-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.foldenable = false --                  " Disable folding at startup.

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

nvimtree.setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})
