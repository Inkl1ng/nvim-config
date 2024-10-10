vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
      local opts = {buffer = event.buf}

      -- these will be buffer-local keybindings
      -- because they only work if you have an active language server

      vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
      vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
      vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
      vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
      vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
      vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
      vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
      vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
      vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
      vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
      vim.keymap.set('n', 'sh', '<CMD>ClangdSwitchSourceHeader<CR>', opts)
    end
  })


require("mason").setup()
require("mason-lspconfig").setup({
    ensured_installed = {
        "clangd",
        "lua_ls"
    },

    handlers = {
        function(server_name)
            require("lspconfig")[server_name].setup({})
        end,

        clangd = function()
            require("lspconfig").clangd.setup({
                capabilities = lsp_capabilities,
                cmd = {
                    "clangd",
                    "--header-insertion=never",
                    "--function-arg-placeholders",
                    "--background-index=0",
                -- "--compile-commands-dir=.",
                },
                filetypes = {
                    "c",
                    "cpp",
                    "objc",
                    "objcpp",
                    "cuda",
                    "proto",
                    "h",
                    "hpp",
                    "tpp",
                    "inl"
                },
                root_dir = require("lspconfig").util.root_pattern(
                    ".clangd",
                    ".clang-tidy",
                    ".clang-format",
                    "compile_commands.json",
                    "compile_flags.txt",
                    "configure.ac",
                    ".git"
                ),
                single_file_support = true
            })
        end
    }
})
