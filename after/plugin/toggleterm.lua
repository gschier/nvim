require('toggleterm').setup({
  open_mapping = '<C-s>',
  direction = 'float',
  winbar = {
    enabled = true,
  },
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
})
