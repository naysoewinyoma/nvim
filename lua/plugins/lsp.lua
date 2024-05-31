return {
  "neovim/nvim-lspconfig",
  dependencies = {
      "williamboman/mason.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/nvim-cmp",
      "L3MON4D3/LuaSnip",
  },

  config = function()
    local cmp = require('cmp')
    local lspconfig = require("lspconfig")
    local cmp_lsp = require("cmp_nvim_lsp")

    cmp.setup({
      snippet = {
          -- REQUIRED - you must specify a snippet engine
          expand = function(args)
              require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
          end,
      },
      window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          -- ['<Tab>'] = cmp.mapping(function(fallback)
          --     if cmp.visible() then
          --         cmp.select_next_item()
          --     else
          --         fallback()
          --     end
          -- end, { 'i', 's' }),
      }),
      sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
      })
    })


    -- mason
    require("mason").setup()

    local capabilities = cmp_lsp.default_capabilities()
    local on_attach = function(client, bufnr)
        -- Enable completion triggered by <c-x><c-o>
        vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

        -- Mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local bufopts = { noremap=true, silent=true, buffer=bufnr }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
        vim.keymap.set('n', 'rn', vim.lsp.buf.rename, bufopts)
        vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    end

    local servers = {
        "gopls",
        "tsserver",
        "pyright",
    }
    for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
            capabilities = capabilities,
            on_attach = on_attach,
        }
    end
  end
}
