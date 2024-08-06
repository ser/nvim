return {
  {
    "tversteeg/registers.nvim",
    cmd = "Registers",
    config = true,
    keys = {
      { '"', mode = { "n", "v" } },
      { "<C-R>", mode = "i" },
    },
    name = "registers",
  },
  {
    "joshuadanpeterson/typewriter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("typewriter").setup({
        enable_notifications = false,
        enable_horizontal_scroll = false,
      })
    end,
    opts = {},
  },
  --  {
  --    'LnL7/vim-nix',
  --    config = function()
  --      require('vim-nix').setup()
  --    end,
  --  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    config = function()
      require("ts_context_commentstring").setup({})
    end,
  },
  -- too much irritating
  --  {
  --    "gh-liu/fold_line.nvim",
  --    event = "VeryLazy",
  --    init = function()
  --      -- change the char of the line, see the `Appearance` section
  --      vim.g.fold_line_char_open_start = "╭"
  --      vim.g.fold_line_char_open_end = "╰"
  --   end,
  --  },
  --  -- does not work?
  --  {
  --    "nvim-lualine/lualine.nvim",
  --    event = "VeryLazy",
  --    require("lualine").setup({
  --      sections = {
  --        lualine_x = {
  --          require("refact-neovim").status_line,
  --        },
  --      },
  --    }),
  --  },
}
