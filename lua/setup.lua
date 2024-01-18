require('overseer').setup()

require('bufferline').setup ({
    options = {
        numbers = 'ordinal',
        color_icons = false,
        show_buffer_icons = false,
        show_buffer_close_icons = false,
        indicator = {
            style = 'none'
        },
    }
})

<<<<<<< HEAD
=======
require('startup').setup({
    hu_tao = {
        type = 'text',
        oldfiles_directory = false,
        align = 'center',
        fold_section = false,
        marign = 5,
        content = {
            '⠀⠀⠀⠀⠀⠀⢀⣤⣶⣶⣖⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀',
            '⠀⠀⠀⠀⢀⣾⡟⣉⣽⣿⢿⡿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀',
            '⠀⠀⠀⢠⣿⣿⣿⡗⠋⠙⡿⣷⢌⣿⣿⠀⠀⠀⠀⠀⠀⠀',
            '⣷⣄⣀⣿⣿⣿⣿⣷⣦⣤⣾⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀',
            '⠈⠙⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⢀⠀⠀⠀⠀',
            '⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠻⠿⠿⠋⠀⠀⠀⠀',
            '⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀',
            '⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⡄',
            '⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⢀⡾⠀',
            '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣷⣶⣴⣾⠏⠀⠀',
            '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⠛⠋⠁⠀⠀⠀',
        },
        highlight = 'Number',
        default_color = '',
        oldfiles_amount = 0
    },
    me = {
        type = 'text',
        oldfiles_directory = false,
        align = 'center',
        fold_section = false,
        title = 'me',
        margin = 5,
        content = {'github.com/Inkl1ng'},
        highlight = 'Number',
        default_color = '',
        oldfiles_amount = 0
    },
    quote = {
        type = 'text',
        oldfiles_directory = false,
        align = 'center',
        fold_section = false,
        title = 'Clock',
        margin = 5,
        content = require('startup.functions').quote(),
        highlight = 'Constant',
        oldfiles_amount = 0,
    },
    clock = {
        type = 'text',
        oldfiles_directory = false,
        align = 'center',
        fold_section = false,
        title = 'Quote',
        margin = 5,
        content = function()
            local clock = 'Time: ' .. os.date('%H:%M')
            local date = 'Date: ' .. os.date('%d-%m-%y')
            return {'', clock, date}
        end,
>>>>>>> e2aac3056cf886f97f851f1c1de15280a54976d4


