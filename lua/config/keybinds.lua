-- toggle relative and absolute line numbers
vim.api.nvim_set_keymap('n', '<c-r>', ':set relativenumber!<cr>', { noremap = true, silent = true })
-- buffer navigation
vim.api.nvim_set_keymap('n', '<leader>[', ':bprevious<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>]', ':bnext<cr>', { noremap = true, silent = true })
-- close current buffer
vim.api.nvim_set_keymap('n', '<leader>;', ':bd<cr>', { noremap = true, silent = true })
-- close buffer and maintain split
vim.api.nvim_set_keymap('n', '<leader>\'', ':bp|bd#<cr>', { noremap = true, silent = true })