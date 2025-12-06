print("Config is Running")


vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("settings")
require("config.lazy")

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
