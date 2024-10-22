require("config.lazy")
vim.g.mapleader = " "
vim.opt.relativenumber = true
vim.keymap.set("n", "<leader>rc", " :!ruff check")
vim.cmd("set guifont=FiraCode:12")
vim.cmd("set termguicolors")
