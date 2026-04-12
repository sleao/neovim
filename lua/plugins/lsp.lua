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
      },
    },
  },
}
