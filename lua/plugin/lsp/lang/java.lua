require "plugin.lsp.utils"

local trusted_gradle_wrappers = {
  {
    sha256 = "497c8c2a7e5031f6aa847f88104aa80a93532ec32ee17bdb8d1d2f67a194a9c7",
    allowed = true,
  },
}

vim.lsp.config("jdtls", {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,

  init_options = {
    settings = {
      java = {
        imports = {
          gradle = {
            wrapper = {
              checksums = trusted_gradle_wrappers,
            },
          },
        },
      },
    },
  },

  settings = {
    java = {
      imports = {
        gradle = {
          wrapper = {
            checksums = trusted_gradle_wrappers,
          },
        },
      },
    },
  },
})

vim.lsp.enable("jdtls")
