require("mason-nvim-dap").setup({
    ensure_installed = {
        "codelldb"
    }
})

local mason_bin = vim.fn.stdpath("data") .. "/mason/bin/"

local dap = require("dap")
local dapui = require("dapui")

dapui.setup()

dap.listeners.before.attach.dapui_config = function()
    dapui.open()
end
dap.listeners.before.launch.danpui_config = function()
    dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
end

dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    host = "127.0.0.1",
    executable = {
        command = mason_bin .. "codelldb",
        args = { "--port", "${port}" }
    }
}

dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
    }
}

dap.configurations.c = dap.configurations.cpp
