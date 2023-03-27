-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  --use({ 'rose-pine/neovim', as = 'rose-pine', 
--  config = function() 

--	  vim.cmd('colorscheme rose-pine')  end })

      use ({ 'folke/tokyonight.nvim', as = 'tokyonight', config = function()

      vim.cmd('colorscheme tokyonight-night')  end })
 

	  use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	  use( 'nvim-treesitter/playground', {run = ':TSUpdate'})
	  use('ThePrimeagen/harpoon')
	  use('mbbill/undotree')
	  use('tpope/vim-fugitive')
      use('nvim-tree/nvim-web-devicons')
      use( 'fatih/vim-go', { run = ':GoUpdateBinaries' })
      use({ 'folke/trouble.nvim', requires = "nvim-tree/nvim-web-devicons",
          config = function()
              require("trouble").setup {
                  position = "right"
              }
          end
      })
      use( {
          "windwp/nvim-autopairs",
          config = function() require("nvim-autopairs").setup {} end
      })

      use ({
          "folke/todo-comments.nvim",
          requires = "nvim-lua/plenary.nvim",
          config = function()
              require("todo-comments").setup {
                  -- your configuration comes here
                  -- or leave it empty to use the default settings
                  -- refer to the configuration section below
              }
          end
      })

      use ({
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
      })


	 use {
		 'VonHeikemen/lsp-zero.nvim',
		 branch = 'v1.x',
		 requires = {
			 -- LSP Support
			 {'neovim/nvim-lspconfig'},             -- Required
			 {'williamboman/mason.nvim'},           -- Optional
			 {'williamboman/mason-lspconfig.nvim'}, -- Optional

			 -- Autocompletion
			 {'hrsh7th/nvim-cmp'},         -- Required
			 {'hrsh7th/cmp-nvim-lsp'},     -- Required
			 {'hrsh7th/cmp-buffer'},       -- Optional
			 {'hrsh7th/cmp-path'},         -- Optional
			 {'saadparwaiz1/cmp_luasnip'}, -- Optional
			 {'hrsh7th/cmp-nvim-lua'},     -- Optional

			 -- Snippets
			 {'L3MON4D3/LuaSnip'},             -- Required
			 {'rafamadriz/friendly-snippets'}, -- Optional
		 }
	 }
  

  end)
