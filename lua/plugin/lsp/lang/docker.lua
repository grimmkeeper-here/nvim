require "plugin.lsp.utils"
vim.lsp.enable('docker_language_server', {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
})
