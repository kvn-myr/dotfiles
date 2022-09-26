require("nvim-lsp-installer").setup {}

------------------------------
------------------------------
-- nvim-cmp setup
------------------------------
------------------------------
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
-- same as this one: set completeopt=menu,menuone,noselect

-- Setup nvim-cmp.
local cmp = require'cmp'

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, -- For luasnip users.
  }, {
    { name = 'buffer' },
  })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
  sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
  }, {
    { name = 'buffer' },
  })
})


------------------------------
------------------------------
-- Golang
------------------------------
------------------------------
require'lspconfig'.gopls.setup{
    capabilities = capabilities,
    on_attach = function()
        -- "n" == in normal mode (more modes must be in a table)
        -- "K" == key that is pressed
        -- rest == function that is called if the key is pressed
        -- they keymap is ONLY set for gopls!
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {buffer=0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})

        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {buffer=0})
        vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, {buffer=0})
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {buffer=0})
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {buffer=0})
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, {buffer=0})
        vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, {buffer=0})
        vim.keymap.set('n', '<leader>df', vim.diagnostic.goto_next, {buffer=0})
        vim.keymap.set('n', '<leader>dl', '<cmd>Telescope diagnostics<cr>', {buffer=0})
    end
}

------------------------------
------------------------------
-- Python
------------------------------
------------------------------
require'lspconfig'.pyright.setup{
    capabilities = capabilities,
    on_attach = function()
        -- "n" == in normal mode (more modes must be in a table)
        -- "K" == key that is pressed
        -- rest == function that is called if the key is pressed
        -- they keymap is ONLY set for gopls!
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {buffer=0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})

        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {buffer=0})
        vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, {buffer=0})
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {buffer=0})
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {buffer=0})
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, {buffer=0})
        vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, {buffer=0})
        vim.keymap.set('n', '<leader>df', vim.diagnostic.goto_next, {buffer=0})
        vim.keymap.set('n', '<leader>dl', '<cmd>Telescope diagnostics<cr>', {buffer=0})
    end
}

------------------------------
------------------------------
-- Latex
-- (ltex is currently not working)
------------------------------
------------------------------
--[[
require'lspconfig'.ltex.setup{
    capabilities = capabilities,
    on_attach = function()
        -- "n" == in normal mode (more modes must be in a table)
        -- "K" == key that is pressed
        -- rest == function that is called if the key is pressed
        -- they keymap is ONLY set for gopls!
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {buffer=0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})

        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {buffer=0})
        vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, {buffer=0})
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {buffer=0})
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {buffer=0})
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, {buffer=0})
        vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, {buffer=0})
        vim.keymap.set('n', '<leader>df', vim.diagnostic.goto_next, {buffer=0})
        vim.keymap.set('n', '<leader>dl', '<cmd>Telescope diagnostics<cr>', {buffer=0})
    end
}
]]--
require'lspconfig'.texlab.setup{
    capabilities = capabilities,
    on_attach = function()
        -- "n" == in normal mode (more modes must be in a table)
        -- "K" == key that is pressed
        -- rest == function that is called if the key is pressed
        -- they keymap is ONLY set for gopls!
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {buffer=0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})

        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {buffer=0})
        vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, {buffer=0})
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {buffer=0})
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {buffer=0})
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, {buffer=0})
        vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, {buffer=0})
        vim.keymap.set('n', '<leader>df', vim.diagnostic.goto_next, {buffer=0})
        vim.keymap.set('n', '<leader>dl', '<cmd>Telescope diagnostics<cr>', {buffer=0})
    end
}

------------------------------
------------------------------
-- Markdown
------------------------------
------------------------------
require'lspconfig'.marksman.setup{
    capabilities = capabilities,
    on_attach = function()
        -- "n" == in normal mode (more modes must be in a table)
        -- "K" == key that is pressed
        -- rest == function that is called if the key is pressed
        -- they keymap is ONLY set for gopls!
        vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer=0})
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {buffer=0})
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, {buffer=0})
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {buffer=0})

        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {buffer=0})
        vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, {buffer=0})
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {buffer=0})
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {buffer=0})
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, {buffer=0})
        vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, {buffer=0})
        vim.keymap.set('n', '<leader>df', vim.diagnostic.goto_next, {buffer=0})
        vim.keymap.set('n', '<leader>dl', '<cmd>Telescope diagnostics<cr>', {buffer=0})
    end
}
