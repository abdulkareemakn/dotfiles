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

-- Themes
vim.keymap.set("n", "<leader>kt", ":Themery<CR>")

-- Cursor
vim.cmd([[
  highlight Cursor guibg=Black guifg=White
  highlight iCursor guibg=Black guifg=White
  set guicursor=n-v-c:block-Cursor
  set guicursor+=i:ver25-iCursor
]])
