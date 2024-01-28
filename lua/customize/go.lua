-- Custom functions
local function run_go_file()
    local filename = vim.fn.expand('%')
    if vim.fn.filereadable(filename) == 1 then
        local output = vim.fn.system('go run ' .. filename)
        vim.api.nvim_out_write(output)
    else
        vim.api.nvim_err_write("File not found: " .. filename)
    end
end

vim.api.nvim_create_user_command("GoRun", run_go_file, {})
