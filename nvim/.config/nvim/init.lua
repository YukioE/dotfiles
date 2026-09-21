vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("options")
require("keymaps")
require("autocmds")
require("lsp")

require("plugins.silentium")
require("plugins.oil")
require("plugins.which-key")
require("plugins.telescope")
require("plugins.blink")
require("plugins.autopairs")
require("plugins.autotags")
require("plugins.lualine")
require("plugins.gitsigns")

vim.cmd.colorscheme("silentium")

vim.cmd([[
    highlight Normal guibg=#282828
    highlight Visual guibg=#141414
    highlight CursorLine guibg=#141414
]])

-- vim.cmd("cd ~")

--vim.pack.update()
