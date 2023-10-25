require('neorg').setup({
  load = {
    ["core.defaults"] = {},  -- Loads default behaviour
    ["core.concealer"] = {}, -- Adds pretty icons to your documents
    ["core.dirman"] = {      -- Manages Neorg workspaces
      config = {
        workspaces = {
          notes = "~/notes",
        },
      },
    },
    ['core.keybinds'] = {
      config = {
        default_keybinds = true,
        neorg_leader = '<Space>o'
      }
    },

    -- Plugins 
    --
    ["core.integrations.telescope"] = {},
  },
})
