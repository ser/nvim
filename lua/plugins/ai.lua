local heyai = function()
  if os.getenv("NVIM_AI") == "true" then
    return true
  else
    return false
  end
end

return {
  -- {
  --   -- https://github.com/smallcloudai/refact-neovim
  --   "smallcloudai/refact-neovim",
  --   lazy = false,
  --   cond = heyai,
  --   opts = {
  --     --address_url = "http://192.168.41.71:8008",
  --     address_url = "https://refact.ai.sergevictor.eu",
  --     api_key = "AAAA-BBBB-CCCC-DDDD",
  --     vecdb = true,
  --   },
  -- },
  -- {
  --   "milanglacier/minuet-ai.nvim",
  --   config = function()
  --     require("minuet").setup({
  --       enabled = true,
  --       provider = "openai_compatible",
  --       provider_options = {
  --         openai_compatible = {
  --           end_point = "http://192.168.41.49:8080/v1/chat/completions",
  --           api_key = "AAAA-BBBB-CCCC-DDDD",
  --           name = "openai_compatible",
  --         },
  --       },
  --     })
  --   end,
  -- },
  -- { "nvim-lua/plenary.nvim" },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   opts = function(_, opts)
  --     -- if you wish to use autocomplete
  --     table.insert(opts.sources, 1, {
  --       name = "minuet",
  --       group_index = 1,
  --       priority = 100,
  --     })
  --
  --     opts.performance = {
  --       -- It is recommended to increase the timeout duration due to
  --       -- the typically slower response speed of LLMs compared to
  --       -- other completion sources. This is not needed when you only
  --       -- need manual completion.
  --       fetching_timeout = 2000,
  --     }
  --
  --     opts.mapping = vim.tbl_deep_extend("force", opts.mapping or {}, {
  --       -- if you wish to use manual complete
  --       ["<A-y>"] = require("minuet").make_cmp_map(),
  --       -- You don't need to worry about <CR> delay because lazyvim handles this situation for you.
  --       ["<CR>"] = nil,
  --     })
  --   end,
  -- },
  -- "yetone/avante.nvim",
  -- opts = {
  --   provider = "openai",
  --   openai = {
  --     -- endpoint = "http://192.168.41.101:1337/v1/",
  --     endpoint = "http://192.168.41.71:8008/v1/",
  --     --     -- model = "llama3.1:8b",
  --     --     -- model = "gemma-2-2b-it",
  --     --     -- model = "aya-23-8b",
  --     --     -- model = "mistral-ins-7b-q4",
  --     --     api_key_name = "ollama",
  --     temperature = 0,
  --     max_tokens = 4096,
  --     ["local"] = true,
  --   },
  -- },
  -- -- --
  -- Custom Parameters (with defaults)
  --   {
  --     "David-Kunz/gen.nvim",
  --     opts = {
  --       model = "mistral-nemo", -- The default model to use.
  --       quit_map = "q", -- set keymap for close the response window
  --       retry_map = "<c-r>", -- set keymap to re-send the current prompt
  --       accept_map = "<c-cr>", -- set keymap to replace the previous selection with the last result
  --       host = "192.168.41.101", -- The host running the Ollama service.
  --       port = "11434", -- The port on which the Ollama service is listening.
  --       display_mode = "float", -- The display mode. Can be "float" or "split" or "horizontal-split".
  --       show_prompt = false, -- Shows the prompt submitted to Ollama.
  --       show_model = false, -- Displays which model you are using at the beginning of your chat session.
  --       no_auto_close = false, -- Never closes the window automatically.
  --       hidden = false, -- Hide the generation window (if true, will implicitly set `prompt.replace = true`), requires Neovim >= 0.10
  --       init = function(options)
  --         pcall(io.popen, "ollama serve > /dev/null 2>&1 &")
  --       end,
  --       -- Function to initialize Ollama
  --       command = function(options)
  --         local body = { model = options.model, stream = true }
  --         return "curl --silent --no-buffer -X POST http://"
  --           .. options.host
  --           .. ":"
  --           .. options.port
  --           .. "/api/chat -d $body"
  --       end,
  --       -- The command for the Ollama service. You can use placeholders $prompt, $model and $body (shellescaped).
  --       -- This can also be a command string.
  --       -- The executed command must return a JSON object with { response, context }
  --       -- (context property is optional).
  --       -- list_models = '<omitted lua function>', -- Retrieves a list of model names
  --       debug = false, -- Prints errors and the command which is run.
  --     },
  --   },
  --"TabbyML/vim-tabby",
  -- "Exafunction/codeium.vim",
  -- event = "BufEnter",
  -- {
  --   "tzachar/cmp-ai",
  --   dependencies = "nvim-lua/plenary.nvim",
  --   config = function()
  --     local cmp_ai = require("cmp_ai.config")
  --
  --     cmp_ai:setup({
  --       max_lines = 1000,
  --       provider = "Tabby",
  --       notify = true,
  --       provider_options = {
  --         -- These are optional
  --         -- user = 'yourusername',
  --         -- temperature = 0.2,
  --         -- seed = 'randomstring',
  --       },
  --       notify_callback = function(msg)
  --         vim.notify(msg)
  --       end,
  --       run_on_every_keystroke = true,
  --       ignored_file_types = {
  --         -- default is not to ignore
  --         -- uncomment to ignore in lua:
  --         -- lua = true
  --       },
  --     })
  --   end,
  -- },
  -- { "hrsh7th/nvim-cmp", dependencies = { "tzachar/cmp-ai" } },
  -- require("cmp").setup({
  --   sources = {
  --     { name = "cmp_ai" },
  --   },
  -- }),
  {
    "hrsh7th/nvim-cmp",
    opts = {
      sources = {
        { name = "luasnip" },
        { name = "buffer" },
        -- { name = "nvim_lua" },
        { name = "path" },
        { name = "cmp_ai" },
        { name = "nvim_lsp" },
        { name = "emoji" },
      },
    },

    dependencies = {
      -- {
      --   "nzlov/cmp-tabby",
      --   config = function()
      --     local tabby = require("cmp_tabby.config")
      --     tabby:setup({
      --       host = "https://refact.ai.sergevictor.eu",
      --       token = "auth_c971af560b874a66ab7c2428541fe81",
      --     }) -- put your options here
      --   end,
      -- },
      --
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-emoji",
      {
        "tzachar/cmp-ai",
        config = function()
          local cmp_ai = require("cmp_ai.config")
          cmp_ai:setup({
            provider = "Tabby",
            notify = false,
            max_lines = 1000,
            provider_options = {
              base_url = "https://refact.ai.sergevictor.eu/v1/completions",
            },
          })
        end,
      },
    },
  },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      -- add any opts here
      provider = "gemini",
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
  },
}
