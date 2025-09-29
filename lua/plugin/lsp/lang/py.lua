require "plugin.lsp.utils"
vim.lsp.enable('pyright', {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
})
