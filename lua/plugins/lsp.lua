require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})


require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer","pyright","jdtls" },
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").rust_analyzer.setup {
  capabilities = capabilities,
}

require("lspconfig").lua_ls.setup {
    capabilities = capabilities,
}

-- Add Python support
require("lspconfig").pyright.setup {
    capabilities = capabilities,
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "basic", -- Can be "off", "basic", or "strict"
                autoSearchPaths = true, -- Automatically search for imports
                diagnosticMode = "workspace", -- Lint the entire workspace
                useLibraryCodeForTypes = true, -- Use library code for type hints
            },
        },
    },
}


require("lspconfig").jdtls.setup({
    cmd = { "jdtls" }, -- Ensure jdtls is installed via Mason
    root_dir = require("lspconfig.util").root_pattern(".git", "pom.xml", "build.gradle"), -- Recognize Java projects
    capabilities = capabilities,
    settings = {
        java = {
            eclipse = { downloadSources = true },
            configuration = {
                updateBuildConfiguration = "interactive",
            },
            maven = { downloadSources = true },
            implementationsCodeLens = { enabled = true },
            referencesCodeLens = { enabled = true },
            references = {
                includeDecompiledSources = true,
            },
            format = {
                enabled = true, -- Enable formatting
            },
        },
    },
})
