return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer can manage itself

  -- Color Scheme
  use 'shaunsingh/nord.nvim'
  use 'folke/tokyonight.nvim'

  use 'kyazdani42/nvim-web-devicons'  -- Web Devicon

  use 'nvim-lualine/lualine.nvim'  -- Lualine
  use 'akinsho/bufferline.nvim'  -- Bufferline

  use 'kyazdani42/nvim-tree.lua'  -- Nvim-tree

  use 'nvim-treesitter/nvim-treesitter'  -- Tree-Sitter
  use 'windwp/nvim-ts-autotag'
  use 'p00f/nvim-ts-rainbow'
  use 'windwp/nvim-autopairs'

  use 'folke/which-key.nvim'  -- Which-key

  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'  -- Telescope

  -- LSP & Completion
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'onsails/lspkind.nvim'
  use 'glepnir/lspsaga.nvim'

  use 'norcalli/nvim-colorizer.lua'  -- Colorizer

  use 'glepnir/dashboard-nvim'  -- Dashboard

  use 'akinsho/toggleterm.nvim'  -- Toggle Term

  use 'numToStr/Comment.nvim'  -- Comment
end)
