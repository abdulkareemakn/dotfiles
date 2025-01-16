local map = vim.keymap.set

-- Line breaks
map("n", "<CR>", "m`o<Esc>``", { desc = "Insert blankline below" })
map("n", "<S-CR>", "m`O<Esc>``", { desc = "Insert blankline above" })

-- Clone current line downwards
map("n", "<S-A-Down>", "yyp", { desc = "Clone current line down" })
map("n", "<S-A-Up>", "yyP", { desc = "Clone current line up" })

-- Save file
map("n", "<C-s>", ":w<CR>", { desc = "Save file" })

-- Theme switcher
map("n", "<leader>th", ":Themery<CR>", { desc = "Change theme" })

-- Normal Mode
map("i", "jk", "<Esc>", { desc = "Switch to normal Mode" })
map("i", "kj", "<Esc>", { desc = "Switch to normal Mode" })

-- Buffers
-- map("n", "<leader>bb", ":Telescope buffers<CR>", { desc = "See open buffers" })
map("n", "<C-b>", function()
	Snacks.picker.buffers()
end, { desc = "Buffers" })
map("n", "<leader>bn", ":bnext<CR>", { desc = "Next Buffer" })
map("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous Buffer" })
map("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete Buffer" })

-- Files
map("n", "<C-f>", ":lua MiniFiles.open()<CR>", { desc = "File Explorer" })
map("n", "<leader><space>", function()
	Snacks.picker.files()
end, { desc = "Find Files" })
map("n", "<leader>fg", function()
	Snacks.picker.grep()
end, { desc = "Grep" })

map("n", "<leader>sd", function()
	Snacks.picker.diagnostics()
end, { desc = "Diagnostics" })

map("n", "<leader>ht", function()
	Snacks.picker.colorschemes()
end, { desc = "Diagnostics" })

-- LSP
map("n", "gd", function()
	Snacks.picker.lsp_definitions()
end, { desc = "Goto Definition" })
map("n", "gI", function()
	Snacks.picker.lsp_implementations()
end, { desc = "Goto Implementation" })
map("n", "<leader>ss", function()
	Snacks.picker.lsp_symbols()
end, { desc = "LSP Symbols" })

-- Scissors
map("n", "<leader>se", function()
	require("scissors").editSnippet()
end, { desc = "Snippet: Edit" })
map({ "n", "x" }, "<leader>sa", function()
	require("scissors").addNewSnippet()
end, { desc = "Snippet: Add" })

-- Pickers

-- map("v", "<S-A-Down>", "<Esc>yp", { desc = "Clone code block down" })
-- map("v", "<S-A-Up>", "yP", { desc = "Clone code block up" })
