require "plugin.lsp.utils"
vim.lsp.enable('docker_compose_language_service', {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
})
