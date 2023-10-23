local lspkind = require('lspkind')
require('cmp').setup({
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol',
      maxwidth = 30,
      ellipsis_char = '...',
    })
  },
})
