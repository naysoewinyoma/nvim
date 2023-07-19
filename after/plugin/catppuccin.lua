local ok, catppuccin = pcall(require, "catppuccin")
if not ok then return end

vim.opt.termguicolors = true

catppuccin.setup({
    falvour = "mocha",
    -- color_overrides = {
    --     mocha = {
    --         base = "#171717", -- background
    --         surface2 = "#9A9A9A", -- comments
    --         text = "#F6F6F6",
    --     },
    -- }
})
vim.cmd.colorscheme "catppuccin"
