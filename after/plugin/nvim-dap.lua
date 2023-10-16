local dapui_ok, dapui = pcall(require, "dapui")
if not dapui_ok then return end

local dapgo_ok, dapgo = pcall(require, "dap-go")
if not dapgo_ok then return end

dapgo.setup()
dapui.setup()

vim.api.nvim_create_user_command("DapUIOpen", ":lua require('dapui').open()", {})
vim.api.nvim_create_user_command("DapUIClose", ":lua require('dapui').close()", {})
vim.api.nvim_set_keymap('n', '<Leader>dtf', [[:lua require('dap-go').debug_test()<CR>]], { noremap = true, silent = true })
