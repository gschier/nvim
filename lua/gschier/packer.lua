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
  use { 'itchyny/lightline.vim', as = 'lightline' }
  use { 'numToStr/Comment.nvim', as = 'comment' }

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
    }
  }

  use {
    'akinsho/toggleterm.nvim',
    tag = '*',
    config = function()
      require('toggleterm').setup({
        open_mapping = '<C-s>',
      })
    end
  }
end)
