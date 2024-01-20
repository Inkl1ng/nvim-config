require("commander").add({
    -- buffer management
    {
        desc = "Move to left buffer",
        cmd  = "<CMD>bnext<CR>",
        keys = {"n", "<leader>]"},
        cat  = "Buffer",
    },
    {
        desc = "Move to right buffer",
        cmd  = "<CMD>bprevious<CR>",
        keys = {"n", "<leader>["},
        cat  = "Buffer",
    },
    {
        desc = "Close current buffer",
        cmd  = "<CMD>bd<CR>",
        keys = {"n", "<leader>\\"},
        cat  = "Buffer",
    },
})
