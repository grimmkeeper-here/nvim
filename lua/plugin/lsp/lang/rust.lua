require "plugin.lsp.utils"
vim.lsp.enable('rust_analyzer', {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
})
