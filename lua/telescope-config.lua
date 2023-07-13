-- local fb_actions = require "telescope._extensions.file_browser.actions"
local actions = require "telescope.actions"

require('telescope').setup{
    defaults = {
        color_devicons = false,
        disable_devicons = true,
        initial_mode = 'normal',
        mappings = {
            i = {
            },
            n = {
                -- ["<cr>"] = actions.select_tab
            }
        }
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
