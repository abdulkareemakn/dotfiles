require("config.lazy")
vim.g.mapleader = " "
vim.opt.number = true
vim.keymap.set("n", "<leader>rc", " :!ruff check")
