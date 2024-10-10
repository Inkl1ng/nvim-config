require("commander").add({
    {
        desc = "Toggle floating terminal",
        cmd = "<CMD>ToggleTerm<CR>",
        keys = { "n", "<a-i>" }
    },
    {
        desc = "Clear search highlights",
        cmd = "<CMD>noh<CR>",
        keys = { "n", "<c-_>" }
    },
    {
        desc = "Toggle file explorer",
        cmd = "<CMD>NvimTreeToggle<CR>",
        keys = { "n", "<Leader>fb" }
    },
    {
        desc = "Focus on file explorer",
        cmd = "<CMD>NvimTreeFocus<CR>",
        keys = { "n", "<Leader>fn" }
    },
    {
        desc = "Open termdebug",
        cmd = "<CMD>Termdebug<CR>",
        keys = { "n", "db" }
    },
    {
        desc = "Open LazyGit",
        cmd = "<CMD>LazyGit<CR>",
        keys = { "n", "<Leader>lg" }
    },
})
