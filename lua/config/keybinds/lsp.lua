require("commander").add({
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
})
