vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  use { 'wbthomason/packer.nvim' }

  use { 'rmagatti/auto-session', as = 'autosession' }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'tpope/vim-sleuth', as = 'sleuth' }
  use { 'lewis6991/gitsigns.nvim', as = 'gitsigns' }
  use { 'tpope/vim-fugitive', as = 'fugitive' }
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use { 'numToStr/Comment.nvim', as = 'comment' }
  use { 'NvChad/nvim-colorizer.lua', as = 'colorizer' }
  use { 'lukas-reineke/indent-blankline.nvim', as = 'indent-blankline' }
  use { 'windwp/nvim-autopairs', as = 'autopairs' }
  use { 'akinsho/toggleterm.nvim', as = 'toggleterm' }
  use { '0x00-ketsu/autosave.nvim', as = 'autosave' }
  use { 'stevearc/dressing.nvim', as = 'dressing' }
  use { 'AndrewRadev/tagalong.vim', as = 'tagalong' }
  use { 'github/copilot.vim', as = 'copilot' }
  use { 'RRethy/vim-illuminate', as = 'illuminate' }
  use { 'rcarriga/nvim-notify', as = 'notify' }
  use { 'petertriho/nvim-scrollbar', as = 'scrollbar' }
  use { 'prochri/telescope-all-recent.nvim', requires = { { 'kkharji/sqlite.lua' } } }
  use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons' } }
  use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons', } }
  use { 'folke/trouble.nvim', requires = { 'nvim-tree/nvim-web-devicons' } }
  use { 'kevinhwang91/nvim-ufo', requires = { 'kevinhwang91/promise-async' } }
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.4', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use { 'luukvbaal/statuscol.nvim' }
  use { 'sbdchd/neoformat' }

  use {
    'pwntester/octo.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'nvim-tree/nvim-web-devicons',
    },
  }

  use { 'VonHeikemen/lsp-zero.nvim', as = 'lspzero', branch = 'v3.x', requires = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',

    -- LSP Support
    'neovim/nvim-lspconfig',

    -- Autocompletion
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',

    -- Cmp icons
    'onsails/lspkind.nvim',
  } }
end)
