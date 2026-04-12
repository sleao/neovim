return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local colors = {
        bg = "#11111b",
        fg = "#cdd6f4",
        primary = "#89b4fa",
        dark = "#0b0b12",
      }

      local my_theme = {
        normal = {
          a = { bg = colors.primary, fg = colors.bg, gui = "bold" },
          b = { bg = colors.dark, fg = colors.fg },
          c = { bg = colors.bg, fg = colors.fg },
        },
        insert = { a = { bg = "#a6e3a1", fg = colors.bg, gui = "bold" } },
        visual = { a = { bg = "#cba6f7", fg = colors.bg, gui = "bold" } },
      }

      opts.options.theme = my_theme
    end,
  },
}
