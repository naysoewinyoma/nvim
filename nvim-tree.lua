return  {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require("nvim-tree").setup({
      diagnostics = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        debounce_delay = 50,
        severity = {
          min = vim.diagnostic.severity.HINT,
          max = vim.diagnostic.severity.ERROR,
        },
      },
      filters = {
        git_ignored = false,
        -- dotfiles = false,
        custom = {
          "^.git$",
        },
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            -- file = false,
            git = false,
            folder = false,
          }
        },
        root_folder_label = false,
      },
    })

    local function toggle_explorer_focus()
      if vim.bo.filetype == "NvimTree" then
        vim.cmd.wincmd "p"
      else
        vim.cmd(":NvimTreeFindFile")
      end
    end

    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") 
    vim.keymap.set("n", "<leader>o", function() toggle_explorer_focus() end, { desc = "Toggle Explorer Focus" })
end
}
