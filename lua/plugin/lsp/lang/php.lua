require "plugin.lsp.utils"
require('lspconfig')['phpactor'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}
