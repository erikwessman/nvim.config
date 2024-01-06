-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use "EdenEast/nightfox.nvim"

  use "nvim-tree/nvim-tree.lua"

  use "nvim-tree/nvim-web-devicons"

  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {
      'VonHeikemen/fine-cmdline.nvim',
      requires = {
          {'MunifTanjim/nui.nvim'}
      }
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use("mbbill/undotree")

  use({
      "Pocco81/auto-save.nvim",
      config = function()
          require("auto-save").setup {
              -- your config goes here
              -- or just leave it empty :)
          }
      end,
  })

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

end)
