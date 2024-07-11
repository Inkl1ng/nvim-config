-- GDB debugging
vim.cmd("packadd termdebug")
vim.cmd("let g:termdebug_wide=1")
-- keybind to open term debug
vim.api.nvim_set_keymap('n', 'db', ':Termdebug<cr>', { noremap = true, silent = true })