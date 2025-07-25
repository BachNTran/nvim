vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

	use({ 'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
		vim.cmd('colorscheme rose-pine')
	end})

use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground') 
use('theprimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-fugitive')

use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}

use {
  'neovim/nvim-lspconfig',  -- Core LSP configurations
}

use 'hrsh7th/nvim-cmp'              -- Autocompletion UI
use 'hrsh7th/cmp-nvim-lsp'          -- LSP source for nvim-cmp

use 'akinsho/toggleterm.nvim'


end)

