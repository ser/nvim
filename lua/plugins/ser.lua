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
  --   {
  --     "neovim/nvim-lspconfig", -- REQUIRED: for native Neovim LSP integration
  --     lazy = false, -- REQUIRED: tell lazy.nvim to start this plugin at startup
  --     dependencies = {
  --       -- main one
  --       { "ms-jpq/coq_nvim", branch = "coq" },
  --
  --       -- 9000+ Snippets
  --       { "ms-jpq/coq.artifacts", branch = "artifacts" },
  --
  --       -- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
  --       -- Need to **configure separately**
  --       { "ms-jpq/coq.thirdparty", branch = "3p" },
  --       -- - shell repl
  --       -- - nvim lua api
  --       -- - scientific calculator
  --       -- - comment banner
  --       -- - etc
  --     },
  --     init = function()
  --       vim.g.coq_settings = {
  --         auto_start = true, -- if you want to start COQ at startup
  --         -- Your COQ settings here
  --       }
  --     end,
  --     config = function()
  --       -- Your LSP settings here
  --     end,
  --   },
  --
  --{
  -- "m4xshen/hardtime.nvim",
  -- dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  -- opts = {},
  --},
  --
}
