-- local fb_actions = require 'telescope'.extensions.file_browser.actions

local plugins = {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = {
        'nvim-telescope/telescope.nvim',
        'nvim-lua/plenary.nvim'
    },
    config = function()
        require('telescope').setup {
            defaults = {
                color_devicons = false,
                disable_devicons = true,
                initial_mode = 'normal'
            },
            extensions = {
                file_browser = {
                    hijack_netrw = true,
                    mappings = {
                        ['i'] = {
                        },
                        ['n'] = {
                        },
                    },
                    dir_icon = "",
                },
            },
        }
    require("telescope").load_extension "file_browser"
    end,
}

return plugins
