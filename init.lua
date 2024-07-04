-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- startup commands

vim.cmd [[

:au VimEnter * TWEnable
:set virtualedit=onemore

]]

-- :au VimEnter * TWCenter
