require("config.lazy")
vim.g.mapleader = " "
vim.opt.number = true
vim.keymap.set("n", "<leader>rc", " :!ruff check")
vim.cmd('set guifont=FiraCode:12')
