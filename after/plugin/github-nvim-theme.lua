local present, github_theme = pcall(require, "github-theme")
if not present then
    return
end

github_theme.setup({})

vim.cmd('colorscheme github_dark_dimmed')
