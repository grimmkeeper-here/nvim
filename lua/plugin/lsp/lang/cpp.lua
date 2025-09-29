require "plugin.lsp.utils"
vim.lsp.enable('clangd', {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
})
