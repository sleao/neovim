require("nvchad.configs.lspconfig").defaults()

local util = require "lspconfig.util"

local servers = { "html", "cssls", "ts_ls", "clangd", "postgres_lsp", "rust_analyzer", "taplo" }

vim.lsp.enable(servers)

vim.lsp.config("ruff", {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    root_markers = { "pyproject.toml", "ruff.toml", ".ruff.toml", ".git" },
  },
})

vim.lsp.config("gopls", {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      staticcheck = true,
      gofumpt = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
})

vim.lsp.config("pylsp", {
  on_attach = on_attach,
  capabilities = capabilities,

  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          enabled = false,
        },
      },
    },
  },
})

vim.lsp.config("terraformls", {
  on_attach = on_attach,
  capabilities = capabilities,

  cmd = { "terraform-ls", "serve" },
  filetypes = { "terraform", "terraform-vars" },
  root_dir = util.root_pattern(".terraform", ".git"),
})
