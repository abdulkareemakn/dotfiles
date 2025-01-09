-- Line breaks
vim.keymap.set("n", "<CR>", "m`o<Esc>``", {desc="Insert blankline below"})
vim.keymap.set("n", "<S-CR>", "m`O<Esc>``", {desc="Insert blankline above"})

-- Clone current line downwards
vim.keymap.set("n", "<S-A-Down>", "yyp", { desc = "Clone current line down" })
vim.keymap.set("n", "<S-A-Up>", "yyP", { desc = "Clone current line up" })

vim.keymap.set("v", "<S-A-Down>", "<Esc>yp", { desc = "Clone code block down" })
vim.keymap.set("v", "<S-A-Up>", "yP", { desc = "Clone code block up" })
