local ok, nvimtree = pcall(require, "nvim-tree")
if not ok then return end

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
vim.keymap.set("n", "<leader>b", ":NvimTreeFindFile<CR>") -- focus file explorer


-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.foldenable = false --                  " Disable folding at startup.

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

nvimtree.setup({
    diagnostics = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        debounce_delay = 50,
        severity = {
            min = vim.diagnostic.severity.HINT,
            max = vim.diagnostic.severity.ERROR,
        },
        icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
        },
    },
    filters = {
        git_ignored = false,
        dotfiles = false,
        custom = {
            "^.git$",
        },
    },
})
