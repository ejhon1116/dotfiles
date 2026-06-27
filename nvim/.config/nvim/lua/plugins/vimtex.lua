return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "zathura"
    -- Configure the compiler (latexmk)
    vim.g.vimtex_compiler_latexmk = {
      -- This makes latexmk run continuously in the background
      continuous = 1,

      -- This tells vimtex to open the viewer (Zathura) after compilation
      callback = 1,

      -- Enable synctex for forward/inverse search
      synctex = 1,
    }
  end,
}
