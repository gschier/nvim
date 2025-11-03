vim.lsp.config('luals', {
  cmd = {'lua-language-server'},
  filetypes = {'lua'},
  root_markers = {'.luarc.json', '.luarc.jsonc'},
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Rust (defaults)
vim.lsp.config('rust_analyzer', {
  cmd = { 'rust-analyzer' },
  filetypes = { 'rust' },
  root_markers = { 'Cargo.toml', 'rust-project.json', '.git' },
  capabilities = capabilities,
  settings = {
    ['rust-analyzer'] = {
      -- keep defaults; uncomment any of these if you want them:
      -- cargo = { allFeatures = true },
      -- check = { command = 'clippy' },          -- run clippy on save
      -- procMacro = { enable = true },
      -- inlayHints = { lifetimeElisionHints = { enable = true } },
    },
  },
})

vim.lsp.enable({'luals', 'rust_analyzer'})

vim.keymap.set('n', '<C-j>', '<cmd>lua vim.lsp.buf.hover()<cr>', {})
vim.keymap.set('', '<F6>', '<cmd>lua vim.lsp.buf.rename()<cr>', {})
vim.keymap.set('n', 'gr', function() telescope.lsp_references({ include_declaration = false }) end, {})
vim.keymap.set('n', 'gd', '<cmd>Telescope lsp_definitions<cr>', {})
vim.keymap.set('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<cr>', {})

-- Errors
vim.keymap.set('n', '<leader>e', vim.diagnostic.goto_next, {})
vim.keymap.set('n', '<leader>E', vim.diagnostic.goto_prev, {})
