-- Completion engine setup
local cmp = require'cmp'

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  }),
  sources = {
    { name = 'nvim_lsp' },
  },
})

-- LSP + completion capabilities
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Example: Clangd for C++
require('lspconfig').clangd.setup({
  capabilities = capabilities,
})

