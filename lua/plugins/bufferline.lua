local bufferline = require('bufferline')
bufferline.setup({
  options = {
    style_preset = bufferline.style_preset.no_italic,
    numbers = 'ordinal',
    color_icons = false,
    show_buffer_icons = false,
    show_buffer_close_icons = false,
    seperator_style = 'thick',
  },
  highlights = {
    buffer_selected = {
      fg = '#b6d6fd',
      bold = true
    }
  },
})


vim.keymap.set('n', '<leader>1', '<cmd>BufferLineGoToBuffer 1<cr>')
vim.keymap.set('n', '<leader>2', '<cmd>BufferLineGoToBuffer 2<cr>')
vim.keymap.set('n', '<leader>3', '<cmd>BufferLineGoToBuffer 3<cr>')
vim.keymap.set('n', '<leader>4', '<cmd>BufferLineGoToBuffer 4<cr>')
vim.keymap.set('n', '<leader>5', '<cmd>BufferLineGoToBuffer 5<cr>')
vim.keymap.set('n', '<leader>6', '<cmd>BufferLineGoToBuffer 6<cr>')
vim.keymap.set('n', '<leader>7', '<cmd>BufferLineGoToBuffer 7<cr>')
vim.keymap.set('n', '<leader>8', '<cmd>BufferLineGoToBuffer 8<cr>')
vim.keymap.set('n', '<leader>9', '<cmd>BufferLineGoToBuffer 9<cr>')