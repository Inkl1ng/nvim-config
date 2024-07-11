vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- lazy.nvim setup
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  -- bufferline setup for easier buffer management
  { 'akinsho/bufferline.nvim', version = '*', },
  {'felipeagc/fleet-theme-nvim'},
  -- filesystem browser
  {'TimUntersberger/neofs'},
  -- lsp plugins
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
  {'nvim-treesitter/nvim-treesitter', build = ":TSUpdate"},
})

require('plugins')
require('config')