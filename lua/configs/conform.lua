return {
  formatters_by_ft = {
    lua = { "stylua" },

    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },

    python = { "black" },
    rust = { "rustfmt" },
    go = { "gofmt" },

    sh = { "shfmt" },
    yaml = { "yamlfmt" },
    toml = { "taplo" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}
