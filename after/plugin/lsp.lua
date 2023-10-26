local telescope = require('telescope.builtin')
local lsp_zero = require('lsp-zero')

local lua_opts = lsp_zero.nvim_lua_ls()
require('lspconfig').lua_ls.setup(lua_opts)

lsp_zero.on_attach(function(_, bufnr)
  -- see :help lsp-zero-keybindings
  lsp_zero.default_keymaps({ buffer = bufnr })

  -- Causes trouble with prettier-based projects with eslint configs :(
  -- lsp_zero.buffer_autoformat()
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = { lsp_zero.default_setup },
})

vim.keymap.set('n', '<C-j>', '<cmd>lua vim.lsp.buf.hover()<cr>', {})
vim.keymap.set('', '<F6>', '<cmd>lua vim.lsp.buf.rename()<cr>', {})
vim.keymap.set('n', 'gr', function() telescope.lsp_references({ include_declaration = false }) end, {})
vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', {})
vim.keymap.set('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<cr>', {})

-- Errors
vim.keymap.set('n', '<leader>e', vim.diagnostic.goto_next, {})
vim.keymap.set('n', '<leader>E', vim.diagnostic.goto_prev, {})
