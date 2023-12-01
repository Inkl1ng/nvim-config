local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp.default_keymaps({buffer = bufnr })
end)

-- lua lsp
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

-- auto install LSP
lsp.ensure_installed({
    'clangd',
    'lua_ls',
    'marksman',
    'pyright'
})

lsp.setup()

-- autocomplete config
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = {
        -- use enter to select selection
        ['<cr>'] = cmp.mapping.confirm({select = false }),
        -- use tab and shift-tab to change selection
        ['<Tab>'] = cmp_action.luasnip_supertab(),
        ['<s-Tab>'] = cmp_action.luasnip_shift_supertab(),
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    formatting = {
    }
})
