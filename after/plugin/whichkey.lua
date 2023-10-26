require('which-key').setup({
  window = {
    border = "single",
  },
  triggers = "auto",
  triggers_nowait = {
    -- marks
    "`",
    "g`",
    "g'",
    -- registers
    '"',
    "<c-r>",
    -- spelling
    "z=",
  },
})
