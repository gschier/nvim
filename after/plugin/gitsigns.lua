require('gitsigns').setup({
  numhl                   = false,
  current_line_blame      = true,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol',
    delay = 2000,
  },
})