require "plugin.lsp.utils"
vim.lsp.enable('ts_ls', {
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
})
