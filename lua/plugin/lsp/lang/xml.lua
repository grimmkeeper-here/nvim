require "plugin.lsp.utils"
vim.lsp.enable('lemminx', {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
})
