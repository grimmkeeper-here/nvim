require "plugin.lsp.utils"
vim.lsp.config('asm_lsp',{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
})