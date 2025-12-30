vim.g.mapleader = ' '

-- options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.background = "dark"
vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'

-- tab options
-- 4 spaces wide, expand to spaces
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.diagnostic.config({ virtual_text = true })

-- keymaps
vim.keymap.set('n', '<leader><leader>', '<c-^>')
vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float)

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

-- plugins
require('lazy').setup({
  -- colorscheme(s)
  { 'ellisonleao/gruvbox.nvim', priority = 1000, config = true, opts = ... },
  { 'Mofiqul/vscode.nvim' },

  {
    'zaldih/themery.nvim',
    lazy = false,
    config = function()
      require('themery').setup({
        themes = { 'gruvbox', 'vscode' },
        livePreview = true
      })
    end
  },

  -- file explorer
  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
    lazy = false,
    config = function()
      require('oil').setup()
      vim.keymap.set('n', 'fb', ':Oil<cr>')
    end
  },

  -- telescope
  {
    'nvim-telescope/telescope.nvim',
    tag = 'v0.2.0',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S . -B build -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release --target install' },
    },
    config = function()
      vim.keymap.set('n', '<leader>tf', ':Telescope find_files<cr>')
      vim.keymap.set('n', '<leader>tb', ':Telescope buffers<cr>')
    end
  },

  -- treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
  },

  -- lsp
  {
    'mason-org/mason-lspconfig.nvim',
    opts = {
      ensure_installed = { 'clangd', 'lua_ls' }
    },
    dependencies = {
      { 'mason-org/mason.nvim', opts = {} },
      'neovim/nvim-lspconfig'
    },
  },

  -- autocompletion
  {
    'saghen/blink.cmp',
    version = '1.*',
    opts = {
      keymap = { preset = 'default' },
      appearance = {
        nerd_font_variant = 'mono'
      },

      signature = { enabled = true }
    }
  },

  -- other
  {
    'folke/which-key.nvim',
    event = 'VeryLazy'
  }
})
