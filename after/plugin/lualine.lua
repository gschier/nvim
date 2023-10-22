require('lualine').setup({
  extensions = { 'toggleterm', 'nvim-tree' },
  options = {
    icons_enabled = true,
    theme = 'auto',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'filename', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = {},
    lualine_x = {},
    lualine_y = { 'filetype' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    }
  },
})
