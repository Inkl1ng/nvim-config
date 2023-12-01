local map = vim.api.nvim_set_keymap

-- open Themery
map('n', '<leader>TH', ':Themery<cr>', { noremap = true, silent = true })

-- open carbon (file explorer)
map('n', '<leader>fb', ':Fcarbon<cr>', { noremap = true, silent = true })

-- buffer management
-- move left and right through buffers
map('n', '<leader>[', ':bprevious<cr>', { noremap = true, silent = true })
map('n', '<leader>]', ':bnext<cr>', { noremap = true, silent = true })
-- close buffer
map('n', '<leader>\\', ':bd<cr>', { noremap = true, silent = true })
