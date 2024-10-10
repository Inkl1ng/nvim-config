require("commander").setup({
    components = {
        "CAT",
        "DESC",
        "KEYS",
    },
    sort_by = {
        "CAT",
        "DESC",
        "KEYS",
    },
})

require("commander").add({
    {
        desc = "Open commander",
        cmd = "<CMD>Telescope commander<CR>",
        keys = { "n", "<Leader>fc" },
    },
})

require("config.keybinds.buffer")
require("config.keybinds.dap")
require("config.keybinds.lsp")
require("config.keybinds.misc")
require("config.keybinds.telescope")

