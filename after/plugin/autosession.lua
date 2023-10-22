require('auto-session').setup({
  -- Clear jumps on restore
  post_restore_cmds = { 'clearjumps' }
})
