local lsp_zero = require('lsp-zero')
local cmp = require('cmp')

local lua_opts = lsp_zero.nvim_lua_ls()
require('lspconfig').lua_ls.setup(lua_opts)

lsp_zero.on_attach(function(_, bufnr)
  -- see :help lsp-zero-keybindings
  lsp_zero.default_keymaps({ buffer = bufnr })
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = { lsp_zero.default_setup },
})

cmp.setup({
  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
    ['<Tab>'] = cmp.mapping.confirm({ select = false }),
  }),
})

vim.keymap.set('n', '<C-j>', '<cmd>lua vim.lsp.buf.hover()<cr>', {})
vim.keymap.set('', '<F6>', '<cmd>lua vim.lsp.buf.rename()<cr>', {})
vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', {})
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', {})
vim.keymap.set('n', 'gf', function()
  vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
end, opts)
