local map = vim.api.nvim_set_keymap

-- Telescope file browser
map('n', '<leader>fb', ':Telescope file_browser<cr>', { noremap = true })

-- move across tabs
map('n', '<leader>[', ':tabp<cr>', {})
map('n', '<leader>]', ':tabn<cr>', {})
