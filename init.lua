print("Config is Running")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.lazy")
require("settings")

vim.lsp.enable({"lua_ls", "clangd", "gopls", "html", "pylsp"})
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.o.winborder = 'rounded'
vim.diagnostic.config({ virtual_text = true })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format current buffer"})
