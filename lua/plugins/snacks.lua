local excluded = {
  -- ".git",
  ".yarn/cache/**",
  ".yarn/install/**",
  ".yarn/install*",
  ".yarn/releases/**",
  ".pnpm-store",
  ".venv",
  ".DS_Store",
  "**/.node-gyp/**",
  "**/claude/debug",
  "**/claude/file-history",
  "**/claude/plans",
  "**/claude/plugins",
  "**/claude/projects",
  "**/claude/session-env",
  "**/claude/shell-snapshots",
  "**/claude/statsig",
  "**/claude/telemetry",
  "**/claude/todos",
  "**/claude/history.jsonl",
  "**/claude/*cache*",
}
local included = { "**/.env", "**/.env.*" }

return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        files = {
          hidden = true,
          ignored = false,
          include = included,
          win = {
            input = {
              keys = {
                ["<S-h>"] = "toggle_hidden",
                ["<S-i>"] = "toggle_ignored",
                ["<S-f>"] = "toggle_follow",
              },
            },
          },
          exclude = excluded,
        },
        grep = {
          hidden = true,
          ignored = false,
          include = included,
          win = {
            input = {
              keys = {
                ["<S-h>"] = "toggle_hidden",
                ["<S-i>"] = "toggle_ignored",
                ["<S-f>"] = "toggle_follow",
              },
            },
          },
          exclude = excluded,
        },
        grep_buffers = {},
        explorer = {
          hidden = true,
          ignored = false,
          include = included,
          supports_live = true,
          auto_close = true,
          diagnostics = true,
          diagnostics_open = false,
          focus = "list",
          follow_file = true,
          git_status = true,
          git_status_open = false,
          git_untracked = true,
          jump = { close = true },
          tree = true,
          watch = true,
          exclude = excluded,
        },
      },
    },
  },
}
