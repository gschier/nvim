local lsp_zero = require('lsp-zero')
local cmp = require('cmp')

local lua_opts = lsp_zero.nvim_lua_ls()
require('lspconfig').lua_ls.setup(lua_opts)

lsp_zero.on_attach(function(_, bufnr)
  -- see :help lsp-zero-keybindings
  lsp_zero.default_keymaps({ buffer = bufnr })
  lsp_zero.buffer_autoformat()
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
