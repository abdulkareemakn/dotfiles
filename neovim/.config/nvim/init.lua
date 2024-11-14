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

-- Halcyon, Catppuccin
vim.keymap.set("n", "<leader>kt", ":Themery<CR>")

-- Material
vim.keymap.set("n", "<leader>th", function()
	require("material.functions").find_style()
end)

-- Monokai
vim.keymap.set("n", "<leader>mn", ":MonokaiProSelect<CR>")

-- Cursor
vim.cmd([[
  highlight Cursor guibg=Black guifg=White
  highlight iCursor guibg=Black guifg=White
  set guicursor=n-v-c:block-Cursor
  set guicursor+=i:ver25-iCursor
]])
