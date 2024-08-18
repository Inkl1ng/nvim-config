-- indentation setttings, changes based on filetype
-- default tab settings
vim.cmd('set tabstop=4 shiftwidth=4 expandtab')

-- tab settings for different file types
vim.api.nvim_create_autocmd(
  { 'BufEnter', 'BufWinEnter' },
  {
    pattern = { '*.c', '*.h' },
    command = 'set tabstop=8 shiftwidth=8 expandtab!'
  }
)
vim.api.nvim_create_autocmd(
  { 'BufEnter', 'BufWinEnter' },
  {
    pattern = '*.lua',
    command = 'set tabstop=2 shiftwidth=2 expandtab'
  }
)

-- toggle line numbers
vim.cmd('set number')
vim.cmd('set relativenumber')

-- disable matching brace highlights
vim.cmd('let loaded_matchparen=1')

-- colorcolumn
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, { pattern = '*', command = 'set colorcolumn=' })
vim.api.nvim_create_autocmd(
  { 'BufEnter', 'BufWinEnter' },
  {
    pattern = { '*.c', '*.h' },
    callback= function()
      vim.cmd('set colorcolumn=81')
      vim.cmd('highlight ColorColumn guibg=#404040')
    end
  }
)

-- toggle relative numbers when entering and leaving insert mode
vim.api.nvim_create_autocmd('InsertEnter', { command = 'set relativenumber!' })
vim.api.nvim_create_autocmd('InsertLeave', { command = 'set relativenumber' })
