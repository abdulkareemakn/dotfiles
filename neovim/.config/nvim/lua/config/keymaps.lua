local map = vim.keymap.set

-- Line breaks
map("n", "<CR>", "m`o<Esc>``", { desc = "Insert blankline below" })
map("n", "<S-CR>", "m`O<Esc>``", { desc = "Insert blankline above" })

-- Clone current line downwards
map("n", "<S-A-Down>", "yyp", { desc = "Clone current line down" })
map("n", "<S-A-Up>", "yyP", { desc = "Clone current line up" })

-- Theme switcher
map("n", "<leader>th", ":Themery<CR>", { desc = "Change theme" })

-- Normal Mode
map("i", "jk", "<Esc>", { desc = "Switch to normal Mode" })
map("i", "kj", "<Esc>", { desc = "Switch to normal Mode" })

-- Buffers
map("n", "<leader>bb", ":Telescope buffers<CR>", { desc = "See open buffers" })
map("n", "<leader>bn", ":bnext<CR>", { desc = "Next Buffer" })
map("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous Buffer" })
map("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete Buffer" })



-- map("v", "<S-A-Down>", "<Esc>yp", { desc = "Clone code block down" })
-- map("v", "<S-A-Up>", "yP", { desc = "Clone code block up" })
