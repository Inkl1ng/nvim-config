require('overseer').setup()

require('carbon').setup({
    auto_open = false,
    file_icons = false
})

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



