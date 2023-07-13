-- bufferline.nvim
-- local bufferline = require('bufferline')

vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        numbers = 'ordinal',
        color_icons = false,
        separator_style = "slant"
    }
}
