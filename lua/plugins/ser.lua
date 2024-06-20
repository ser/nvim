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
    'joshuadanpeterson/typewriter',
    dependencies = {
        'nvim-treesitter/nvim-treesitter',
    },
    config = function()
        require('typewriter').setup()
    end,
    opts = {}
  }
}
