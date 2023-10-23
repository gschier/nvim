require('lualine').setup({
  extensions = { 'toggleterm', 'nvim-tree', 'overseer' },
  options = {
    icons_enabled = true,
    theme = 'auto',
    section_separators = { left = '', right = '' },
  },
  ignore_focus = "NvimTree",
  sections = {
    lualine_a = {
      { 'filename', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'overseer' },
    lualine_x = {},
    lualine_y = { 'filetype' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    }
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
})
