require('overseer').setup({
  task_list = {
    direction = 'bottom',
  },
})

vim.keymap.set('n', '<C-r>', ':OverseerToggle<CR>', {})
vim.keymap.set('n', '<leader>or', ':OverseerRun<CR>', {})
vim.keymap.set('n', '<leader>ol', ':OverseerLoadBundle<CR>:OverseerOpen<CR>', {})
