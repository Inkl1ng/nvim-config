require('commander').add({
    -- Themery
    {
        desc = 'Open Themery',
        cmd = '<CMD>Themery<CR>',
        keys = {'n', '<leader>TH'},
        cat = 'Misc.'
    },

    -- Carbon
    {
        desc = 'Open Carbon',
        cmd = '<CMD>Fcarbon<CR>',
        keys = {'n', '<leader>fb'},
        cat = 'Misc.'
    },

    {
        desc = 'Toggle relative numbers',
        cmd = '<CMD>set relativenumber!<CR>',
        keys = {'n', '<C-r>'},
        cat = 'Misc.'
    },
})
