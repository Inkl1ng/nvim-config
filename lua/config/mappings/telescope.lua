require("commander").add({
    -- Telescope commands
    {
        desc = "Find files",
        cmd  = "<CMD>Telescope find_files<CR>",
        keys = {"n", "<leader>ff"},
        cat  = "Tele.",
    },
    {
        desc = "Browse files",
        cmd  = "<CMD>Telescope file_browser<CR>",
        keys = {"n", "<leader>fb"},
        cat  = "Tele.",
    },
})
