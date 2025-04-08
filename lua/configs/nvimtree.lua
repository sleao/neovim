return {
  git = {
    enable = true,
  },

  filters = { custom = { "__init__.py", "__pycache__" } },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}
