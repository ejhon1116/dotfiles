return {
  -- Configure LazyVim's built-in catppuccin integration
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    opts = {
      flavour = "mocha", -- sets the default flavor to mocha
    },
  },

  -- Tell LazyVim to load catppuccin as the active colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
