return {

  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "eldritch-theme/eldritch.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
  },

  -- Configure LazyVim to load theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "eldritch",
    },
  },

  -- https://github.com/loganswartz/sunburn.nvim
  --  {
  --    "loganswartz/sunburn.nvim",
  --    dependencies = { "loganswartz/polychrome.nvim" },
  --   -- you could do this, or use the standard vimscript `colorscheme sunburn`
  --    config = function()
  --      vim.cmd.colorscheme("sunburn")
  --    end,
  --  },
  --
}
