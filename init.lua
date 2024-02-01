-- set leader key to space, makes sure key mappings are correct
vim.g.mapleader =  " "
vim.g.maplocalleader = " "

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- config
require("config.lazy")
require("config.commander")
require("config.options")
require("config.telescope")
require("config.bufferline")
require("config.startup")
require("config.themes")
require("config.LSP")

-- Themery block
-- This block will be replaced by Themery.
vim.cmd("colorscheme fleet")

vim.cmd("highlight ColorColumn guibg=#373737")

vim.g.theme_id = 3
-- end themery block
