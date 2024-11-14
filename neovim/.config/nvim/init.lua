-- Lazy.nvim
require("config.lazy")

-- Leader
vim.g.mapleader = " "

-- Relative Line Numbers
vim.opt.relativenumber = true

-- Colors
vim.cmd("set termguicolors")

-- Linebreaks
vim.keymap.set("n", "<CR>", "m`o<Esc>``")
vim.keymap.set("n", "<S-CR>", "m`O<Esc>``")

-- colorscheme
vim.cmd("colorscheme catppuccin-latte")
