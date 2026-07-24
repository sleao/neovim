return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      servers = {
        ["*"] = {
          keys = {
            { "<c-k>", false, mode = "i" },
          },
        },
        pyright = {
          mason = false,
          autostart = false,
        },
        -- Workaround for terraform-ls hang on Neovim 0.12 caused by multiline
        -- semantic tokens (deltaStartChar overflow). See hashicorp/terraform-ls#2122.
        -- Remove once a terraform-ls release includes the fix.
        terraformls = {
          on_attach = function(client, _)
            client.server_capabilities.semanticTokensProvider = nil
          end,
        },
      },
    },
  },
}
