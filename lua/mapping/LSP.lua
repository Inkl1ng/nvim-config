require('commander').add({
    {
        desc = 'Goto definition',
        cmd = '<CMD>lua vim.lsp.buf.definition()<CR>',
        keys = {'n', 'gd'},
        cat = 'LSP',
    },
    {
        desc = 'Goto declaration',
        cmd = '<CMD>lua vim.lsp.buf.declaration()<CR>',
        keys = {'n', 'GD'},
        cat = 'LSP',
    },
    {
        desc = 'Goto implementation',
        cmd = '<CMD>lua vim.lsp.buf.implementation()<CR>',
        keys = {'n', 'gi'},
        cat = 'LSP',
    },
    {
        desc = 'Signature Help',
        cmd = '<CMD>lua vim.lsp.buf.signature_help()<CR>',
        keys = {'n', 'gs'},
        cat = 'LSP',
    },
    {
        desc = 'Hover on symbol',
        cmd = '<CMD>lua vim.lsp.buf.hover()<CR>',
        keys = {'n', 'K'},
        cat = 'LSP',
    },
    {
        desc = 'Rename',
        cmd = '<CMD>lua vim.lsp.buf.rename()<CR>',
        keys = {'n', '<F2>'},
        cat = 'LSP',
    },
    {
        desc = 'Switch header/source',
        cmd = '<CMD>ClangdSwitchSourceHeader<CR>',
        keys = {'n', 'SH'},
        cat = 'LSP',
    }
})
