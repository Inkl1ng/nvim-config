local map = vim.api.nvim_set_keymap

-- Telescope file browser
map('n', '<leader>fb', ':Telescope file_browser<cr>', { noremap = true, silent = true })

-- buffer management
map('n', '<leader>[', ':bprevious<cr>', { noremap = true, silent = true })
map('n', '<leader>]', ':bnext<cr>', { noremap = true, silent = true })
map('n', '<leader>\\', ':bd<cr>', { noremap = true, silent = true })

-- exit terminal insert mode
vim.keymap.set('t', '<c-x>', '<C-\\><c-n>', { noremap = true, silent = true })

-- open lazygit
map('n', '<leader>gg', ':LazyGit<cr>', { noremap = true, silent = true })

-- open Themery
map('n', '<leader>TH', ':Themery<cr>', { noremap = true, silent = true })
