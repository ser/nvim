local heyai = function()
  if os.getenv("NVIM_AI") == "true" then
    return true
  else
    return false
  end
end

return {
  {
    -- https://github.com/smallcloudai/refact-neovim
    "smallcloudai/refact-neovim",
    lazy = false,
    cond = heyai,
    opts = {
      --address_url = "http://192.168.41.71:8008",
      address_url = "https://refact.ai.sergevictor.eu",
      api_key = "AAAA-BBBB-CCCC-DDDD",
      vecdb = true,
    },
  },
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
}
