local dap = require("dap")

require("commander").add({
    {
        desc = "Start debugging/resuming execution",
        cmd = function() dap.continue() end,
        keys = { "n", "<leader>dc" },
        cat = "DAP"
    },
    {
        desc = "Run last session",
        cmd = function() dap.run_last() end,
        keys = { "n", "<leader>dR" },
        cat = "DAP"
    },
    {
        desc = "Toggle breakpoint",
        cmd = function() dap.toggle_breakpoint() end,
        keys = { "n", "<leader>dt" },
        cat = "DAP"
    },
    {
        desc = "Set breakpoint",
        cmd = function() dap.set_breakpoint() end,
        keys = { "n", "<leader>db" },
        cat = "DAP"
    },
    {
        desc = "Set logpoint",
        cmd = function() dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: ")) end,
        keys = { "n", "<leader>dl" },
        cat = "DAP"
    },
    {
        desc = "Restart session",
        cmd = function() dap.run_last() end,
        keys = { "n", "<leader>dr" },
        cat = "DAP"
    },
    {
        desc = "Terminate session",
        cmd = function() dap.terminate() end,
        keys = { "n", "<leader>dx" },
        cat = "DAP"
    },
    {
        desc = "Step over",
        cmd = function() dap.step_over() end,
        keys = { "n", "<leader>d<Right>" },
        cat = "DAP"
    },
    {
        desc = "Step in",
        cmd = function() dap.step_in() end,
        keys = { "n", "<leader>d<Down>" },
        cat = "DAP"
    },
    {
        desc = "Step out",
        cmd = function() dap.step_out() end,
        keys = { "n", "<leader>d<Up>" },
        cat = "DAP"
    },
})
