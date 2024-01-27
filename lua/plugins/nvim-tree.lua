return  {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
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
        -- icons = {
        --   hint = "",
        --   info = "",
        --   warning = "",
        --   error = "",
        -- },
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
            folder = false,
          }
        },
        root_folder_label = false,
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
  end
}
