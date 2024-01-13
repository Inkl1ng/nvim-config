require('commander').setup({
    components = {'CAT', 'DESC', 'KEYS'},
    sort_by = {'CAT', 'DESC', 'KEYS', 'CMD'},
    seperator = ' ',
    auto_replace_desc_with_cmd = true,
    prompt_title = 'Commander',
    integration = {
        telescope = {
            enable = false,
        },
    },
    lazy = {
        enable = false,
        set_plugin_name_as_cat = false
    }
})

require('mapping/Misc')
require('mapping/LSP')
require('mapping/Buffer')

