require('lualine').setup({
  extensions = { 'toggleterm', 'nvim-tree', 'overseer' },
  options = {
    icons_enabled = true,
    theme = 'auto',
    section_separators = { left = '', right = '' },
    component_separators = { left = '|', right = '|' },
  },
  ignore_focus = "NvimTree",
  sections = {
    lualine_a = {
      { 'filename', separator = { left = '' }, padding = { right = 1 } },
    },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'overseer' },
    lualine_x = {},
    lualine_y = {
      { 'filetype', padding = { right = 1 } },
    },
    lualine_z = {
      { 'progress', padding = { right = 1 } },
      { 'location', separator = { right = '' }, padding = { left = 1 } },
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
