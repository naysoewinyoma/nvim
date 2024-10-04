return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
    null_ls.setup({
      sources = {
        -- golang
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.goimports,
        -- javascript, typescript
        null_ls.builtins.formatting.prettier,
        -- python
        -- null_ls.builtins.formatting.black,
        -- lua
        -- null_ls.builtins.formatting.stylua,
      },
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
              -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
              vim.lsp.buf.format({ async = false })
            end,
          })
        end
      end,
    })

    vim.cmd('map <Leader>lf :lua vim.lsp.buf.format({timeout_ms = 2000})<CR>')
  end
}
