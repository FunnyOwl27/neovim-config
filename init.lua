print("Config is Running")


vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("settings")
require("custom.treesitter")

vim.lsp.enable({"lua_ls"})
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

