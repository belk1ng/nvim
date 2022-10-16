local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- Stuff
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'L3MON4D3/LuaSnip'
  use "terrortylor/nvim-comment"
  use 'norcalli/nvim-colorizer.lua'
  use 'drewtempelmeyer/palenight.vim'
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'

  -- LSP 
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp'
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim' 
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- File icons
  use 'kyazdani42/nvim-web-devicons'

  -- Telescope
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- UI
  use 'nvim-lualine/lualine.nvim'
  use 'akinsho/nvim-bufferline.lua'

  -- Git
  use 'lewis6991/gitsigns.nvim'
  use {'akinsho/git-conflict.nvim', tag = "*", config = function()
    require('git-conflict').setup()
  end}
end)
