require('catppuccin').setup({
  transparent_background = true,
  term_colors = true,
  dim_inactive = {
    enabled = false,   -- dims the background color of inactive window
    shade = "dark",
    percentage = 0.15, -- percentage of the shade to apply to the inactive window
  },
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    notify = false,
    lsp_trouble = false,
    telescope = true,
    mini = {
      enabled = true,
      indentscope_color = "",
    },
  },
});

vim.cmd('colorscheme catppuccin')
