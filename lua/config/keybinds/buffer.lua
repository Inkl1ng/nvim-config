require("commander").add({
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
