require("config.lazy")
vim.g.mapleader = " "
vim.opt.relativenumber = true
vim.keymap.set("n", "<leader>rc", " :!ruff check")
vim.cmd("set guifont=FiraCode:12")
vim.cmd("set termguicolors")
vim.keymap.set("n", "<CR>", "m`o<Esc>``")
vim.keymap.set("n", "<S-CR>", "m`O<Esc>``")
