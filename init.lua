-- set tabs as 4 spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")

-- toggle relative line numbers
vim.cmd("set relativenumber")

-- toggle rulers for columns 72, 80, 100 and 120
vim.cmd("set colorcolumn=72,80,100,120")

-- switch between .cpp and .hpp with <A-m>
-- works both ways
vim.cmd("autocmd FileType cpp map <A-m> :e %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>")
