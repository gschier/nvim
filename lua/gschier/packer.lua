vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    as = 'telescope',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'rmagatti/auto-session',
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
      }
    end
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('tpope/vim-sleuth')

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- LSP Support
      {'neovim/nvim-lspconfig'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }

  use('airblade/vim-gitgutter')
  use('tpope/vim-fugitive')

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use {
    'loctvl842/monokai-pro.nvim',
    config = function()
      require('monokai-pro').setup({
        filter = 'octagon',
        terminal_colors = true,
        transparent_background = true,
      })
      vim.cmd('colorscheme monokai-pro')
    end
  }

  use('itchyny/lightline.vim', {})

  use {
    'akinsho/toggleterm.nvim',
    tag = '*',
    config = function()
      require("toggleterm").setup({
          open_mapping = '<C-s>',
      })
    end
  }
end)

