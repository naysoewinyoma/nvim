local ok, nvimtree = pcall(require, "nvim-tree")
if not ok then return end

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
    renderer = {
        highlight_git = true,
        icons = {
            show = {
                git = false,
            }
        },
        root_folder_label = ":t",
    },
})

function toggle_explorer_focus()
    if vim.bo.filetype == "NvimTree" then
        vim.cmd.wincmd "p"
    else

        vim.cmd(":NvimTreeFindFile")
    end
end

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
vim.keymap.set("n", "<leader>o", ":lua toggle_explorer_focus()<CR>", {desc = "Toggle Explorer Focus"}) 
