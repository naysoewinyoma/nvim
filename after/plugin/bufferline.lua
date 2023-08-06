local ok, bufferline = pcall(require, "bufferline")
if not ok then
    return
end

vim.opt.termguicolors = true

bufferline.setup {
    options = {
        offsets = {{
            filetype = "NvimTree",
            text_align = "left",
            separator = true,
            highlight = "Directory",
        }},
        numbers = "buffer_id",
    }
}
