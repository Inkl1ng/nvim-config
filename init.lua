-- set leader key to space, makes sure key mappings are correct
vim.g.mapleader =  " "
vim.g.maplocalleader = " "
-- disable netrw
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- lazy.nvim setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

require("lsp-config")
require("setup")
require("options")
require("mappings")
require("startup-screen")
require("telescope-config")

-- Themery block
-- This block will be replaced by Themery.
vim.cmd("colorscheme fleet")

vim.cmd("highlight ColorColumn guibg=#373737")

vim.g.theme_id = 3
-- end themery block
