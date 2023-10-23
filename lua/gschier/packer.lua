vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  use { 'wbthomason/packer.nvim' }

  use { 'rmagatti/auto-session', as = 'autosession' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'tpope/vim-sleuth', as = 'sleuth' }
  use { 'airblade/vim-gitgutter', as = 'gitgutter' }
  use { 'tpope/vim-fugitive', as = 'fugitive' }
  use { 'loctvl842/monokai-pro.nvim', as = 'monokai-pro' }
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use { 'dracula/vim', as = 'dracula' }
  use { 'numToStr/Comment.nvim', as = 'comment' }
  use { 'NvChad/nvim-colorizer.lua', as = 'colorizer' }
  use { 'lukas-reineke/indent-blankline.nvim', as = 'indent-blankline' }
  use { 'windwp/nvim-autopairs', as = 'autopairs' }
  use { 'akinsho/toggleterm.nvim', as = 'toggleterm' }
  use { '0x00-ketsu/autosave.nvim', as = 'autosave' }
  use { 'stevearc/overseer.nvim', as = 'overseer' }
  use { 'stevearc/dressing.nvim', as = 'dressing' }
  use { 'AndrewRadev/tagalong.vim', as = 'tagalong' }

  use {
    'prochri/telescope-all-recent.nvim',
    requires = {
      { 'kkharji/sqlite.lua' }
    },
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  }

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    as = 'telescope',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use {
    "folke/trouble.nvim",
    requires = { "nvim-tree/nvim-web-devicons" },
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- LSP Support
      { 'neovim/nvim-lspconfig' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },

      -- Cmp icons
      { 'onsails/lspkind.nvim' },
    }
  }
end)
