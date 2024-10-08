require("commander").setup({
    sort_by = {
        "CAT",
        "DESC",
        "KEYS",
        "CMD"
    },
})

require("commander").add({
    {
        desc = "Open commander",
        cmd = "<CMD>Telescope commander<CR>",
        keys = { "n", "<Leader>fc" },
    },

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

    -- LSP keybindings
    {
        desc = "Switch header/source",
        cmd = "",
        keys = { "n", "sh" },
        cat = "LSP"
    },
    {
        desc = "Show LSP hover",
        cmd = "",
        keys = { "n", "K" },
        cat = "LSP"
    },
    {
        desc = "Rename",
        cmd = "",
        keys = { "n", "<F2>" },
        cat = "LSP"
    },
    {
        desc = "Goto definition",
        cmd = "",
        keys = { "n", "gd" },
        cat = "LSP",
    },
    {
        desc = "Goto declaration",
        cmd = "",
        keys = { "n", "gD" },
        cat = "LSP",
    },
    {
        desc = "Goto implementation",
        cmd = "",
        keys = { "n", "gi" },
        cat = "LSP",
    },
    {
        desc = "Goto type definition",
        cmd = "",
        keys = { "n", "go" },
        cat = "LSP",
    },
    {
        desc = "Show references",
        cmd = "",
        keys = { "n", "gr" },
        cat = "LSP",
    },
    {
        desc = "Show signature help",
        cmd = "",
        keys = { "n", "gs" },
        cat = "LSP",
    },

    -- Telescope
    {
        desc = "Find files",
        cmd = "<CMD>Telescope file_browser<CR>",
        keys = { "n", "<leader>ff" },
        cat = "Tele"
    },

    -- buffer keybindings

    {
        desc = "Move to previous buffer",
        cmd = "<CMD>bp<CR>",
        keys = { "n", "<leader>[" },
        cat = "buffer"
    },
    {
        desc = "Move to next buffer",
        cmd = "<CMD>bn<CR>",
        keys = { "n", "<leader>]" },
        cat = "buffer"
    },
    {
        desc = "Move to 1st buffer",
        cmd = "<CMD>BufferLineGoToBuffer 1<CR>",
        keys = { "n", "<leader>1" },
        cat = "buffer"
    },
    {
        desc = "Move to 2nd buffer",
        cmd = "<CMD>BufferLineGoToBuffer 2<CR>",
        keys = { "n", "<leader>2" },
        cat = "buffer"
    },
    {
        desc = "Move to 3rd buffer",
        cmd = "<CMD>BufferLineGoToBuffer 3<CR>",
        keys = { "n", "<leader>3" },
        cat = "buffer"
    },
    {
        desc = "Move to 4th buffer",
        cmd = "<CMD>BufferLineGoToBuffer 4<CR>",
        keys = { "n", "<leader>4" },
        cat = "buffer"
    },
    {
        desc = "Move to 5th buffer",
        cmd = "<CMD>BufferLineGoToBuffer 5<CR>",
        keys = { "n", "<leader>5" },
        cat = "buffer"
    },
    {
        desc = "Move to 6th buffer",
        cmd = "<CMD>BufferLineGoToBuffer 6<CR>",
        keys = { "n", "<leader>6" },
        cat = "buffer"
    },
    {
        desc = "Move to 7th buffer",
        cmd = "<CMD>BufferLineGoToBuffer 7<CR>",
        keys = { "n", "<leader>7" },
        cat = "buffer"
    },
    {
        desc = "Move to 8th buffer",
        cmd = "<CMD>BufferLineGoToBuffer 8<CR>",
        keys = { "n", "<leader>8" },
        cat = "buffer"
    },
    {
        desc = "Move to 9th buffer",
        cmd = "<CMD>BufferLineGoToBuffer 9<CR>",
        keys = { "n", "<leader>9" },
        cat = "buffer"
    },
    {
        desc = "Close current buffer",
        cmd = "<CMD>bd<CR>",
        keys = { "n", "<leader>;" },
        cat = "buffer"
    },
    {
        desc = "Close current buffer and maintain split",
        cmd = "<CMD>bd|bd#<CR>",
        keys = { "n", "<leader>\'" },
        cat = "buffer"
    },
})