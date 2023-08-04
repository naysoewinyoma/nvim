local ok, lualine = pcall(require, "lualine")
if not ok then return end

lualine.setup({
    sections = {
        lualine_a = {},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {},
        lualine_x = {'encoding', '', 'filetype'},
        lualine_y = {},
        lualine_z = {'location'}
    },
})

