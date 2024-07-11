require('neofs').setup()

-- open file explorer
vim.keymap.set('n', '<leader>fb', function()
  require('neofs').open()
end, { noremap = true })