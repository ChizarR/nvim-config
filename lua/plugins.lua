local status, packer = pcall(require, 'packer')

if (not status) then
  print('Packer is not installed')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- paker
  use 'wbthomason/packer.nvim'

  -- tabs
  use 'nvim-tree/nvim-web-devicons'
  use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}

  -- colorschemes
  use 'rebelot/kanagawa.nvim'
  use 'doums/darcula'
  use 'bluz71/vim-moonfly-colors'
  use 'rockerBOO/boo-colorscheme-nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'lettertwo/laserwave.nvim'

  -- statusline
  use 'hoob3rt/lualine.nvim'
  
  -- lsp
  use 'neovim/nvim-lspconfig'

  -- cmp tools
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'onsails/lspkind.nvim'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'windwp/nvim-autopairs'
  use 'saadparwaiz1/cmp_luasnip'

  -- snippets
  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'

  -- treesitter
  use 'nvim-treesitter/nvim-treesitter'
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- formatting
  use 'MunifTanjim/prettier.nvim'

  -- nerdtree
  use {'nvim-tree/nvim-tree.lua'}

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- comments
  use 'numToStr/Comment.nvim'
end)
