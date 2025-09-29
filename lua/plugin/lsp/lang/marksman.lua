require "plugin.lsp.utils"
vim.lsp.enable('marksman', {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
})
