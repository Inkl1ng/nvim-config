local map = vim.api.nvim_set_keymap

-- Telescope file browser
map('n', '<leader>fb', ':Telescope file_browser<cr>', { noremap = true })

-- buffer management
map('n', '<leader>[', ':bprevious<cr>', {})
map('n', '<leader>]', ':bnext<cr>', {})
map('n', '<leader>\\', ':bd<cr>', {})

-- exit terminal insert mode
vim.keymap.set('t', '<c-x>', '<C-\\><c-n>', {})

-- open lazygit
map('n', '<leader>gg', ':LazyGit<cr>', { noremap = true, silent = true })
