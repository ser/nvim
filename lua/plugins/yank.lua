return {
  --"AckslD/nvim-neoclip.lua",
  --dependencies = { "kkharji/sqlite.lua", module = "sqlite" },
  --config = true,
  --
  --"tenxsoydev/karen-yank.nvim",
  --
  --"gennaro-tedesco/nvim-peekup",
  --
  "tversteeg/registers.nvim",
  cmd = "Registers",
  config = true,
  keys = {
    { '"', mode = { "n", "v" } },
    { "<C-R>", mode = "i" },
  },
  name = "registers",
}
