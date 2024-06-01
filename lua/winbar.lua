local function update_winbar()
  local path = vim.fn.expand('%:p')
  if path == '' then
    vim.o.winbar = '[No Name]'
    return
  end

  -- Get the current working directory
  local cwd = vim.fn.getcwd()

  -- Remove the current working directory from the path
  if path:find(cwd, 1, true) == 1 then
    path = path:sub(#cwd + 2) -- +2 to account for the trailing '/'
  end

  -- Remove the home directory from the path (if necessary)
  local p = path:gsub(vim.env.HOME, '~')

  -- Split the path into a table and join with > to create the winbar
  local components = vim.fn.split(p, '/')

  vim.o.winbar = table.concat(components, ' > ')
end

-- Set up autocmd to update the winbar on BufEnter and BufWinEnter events
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter', 'BufWritePost', 'CursorMoved' }, {
  callback = update_winbar,
})

update_winbar()
