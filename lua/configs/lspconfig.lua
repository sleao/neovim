local nvlsp = require "nvchad.configs.lspconfig"

local lspconfig = require "lspconfig"
local util = require "lspconfig.util"

local servers = { "html", "cssls", "ts_ls", "clangd", "ruff", "postgres_lsp", "rust_analyzer", "taplo" }

nvlsp.defaults()

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.gopls.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

lspconfig.pylsp.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,

  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = false,
        },
      },
    },
  },
}

lspconfig.terraformls.setup {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,

  cmd = { "terraform-ls", "serve" },
  filetypes = { "terraform", "terraform-vars" },
  root_dir = util.root_pattern(".terraform", ".git"),
}
