-- ~/.config/nvim/lua/plugins/tokyonight.lua
return {
  {
    "folke/tokyonight.nvim",
    opts = {
      -- pick the base you like best; "night" is closest to your tmux palette
      style = "night",
      transparent = false,
      terminal_colors = true,
      styles = { sidebars = "dark", floats = "dark" },

      -- hard-override key palette colors to match your tmux theme
      on_colors = function(c)
        c.bg = "#1a1b26"
        c.bg_dark = "#1a1b26"
        c.bg_float = "#1a1b26"
        c.bg_sidebar = "#1a1b26"
        c.fg = "#c0caf5"
        c.blue = "#7aa2f7"
        c.purple = "#bb9af7"
        c.border = "#3b4261"
      end,

      -- optional: tweak a few highlight groups for a closer match
      on_highlights = function(hl, c)
        hl.Normal = { fg = c.fg, bg = c.bg }
        hl.NormalFloat = { fg = c.fg, bg = c.bg_float }
        hl.FloatBorder = { fg = c.border, bg = c.bg_float }
        hl.WinSeparator = { fg = c.border }
        hl.LineNr = { fg = "#3b4261" }
        hl.CursorLine = { bg = "#1f2335" } -- subtle line highlight
        hl.Visual = { bg = "#2b3055" } -- selection
        hl.StatusLine = { fg = c.blue, bg = c.bg }
        hl.Comment = { fg = "#565f89", italic = true }
      end,
    },
  },

  -- ensure LazyVim uses tokyonight as the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },

  -- optional: match lualine to the scheme
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = { theme = "tokyonight" },
    },
  },
}
