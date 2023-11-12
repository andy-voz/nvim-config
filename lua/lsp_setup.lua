require'lsp-lens'.setup()

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig = require('lspconfig')
lspconfig.clangd.setup {
    capabilities = capabilities
}
lspconfig.lua_ls.setup {
    capabilities = capabilities
}
lspconfig.omnisharp.setup {
    capabilities = capabilities
}
