require "plugin.lsp.utils"
vim.lsp.enable('dockerls', {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
})
