require("commander").add({
    -- Themery
    {
        desc = "Open Themery",
        cmd  = "<CMD>Themery<CR>",
        keys = {"n", "<leader>TH"},
        cat  = "Misc."
    },
    {
        desc = "Toggle relative numbers",
        cmd  = "<CMD>set relativenumber!<CR>",
        keys = {"n", "<C-r>"},
        cat  = "Misc."
    },
    {
        desc = "Open Termdebug",
        cmd  = "<CMD>Termdebug<CR>",
        keys = {"n", "<leader>db"},
        cat  = "Misc."
    },
})
