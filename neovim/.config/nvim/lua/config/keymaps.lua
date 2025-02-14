local map = vim.keymap.set

-- Line breaks
map("n", "<CR>", "m`o<Esc>``", { desc = "Insert blankline below" })
map("n", "<S-CR>", "m`O<Esc>``", { desc = "Insert blankline above" })

-- Clear search highlights
map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Increment/Decrement numbers
map("n", "<leader>+", "<C-a>", { desc = "Increment number" })
map("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

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

-- Terminal
map("n", "<leader>ct", function()
	Snacks.terminal.get()
end, { desc = "Open Terminal" })

-- Buffers
-- map("n", "<leader>bb", ":Telescope buffers<CR>", { desc = "See open buffers" })
map("n", "<leader>bb", function()
	Snacks.picker.buffers()
end, { desc = "Buffers" })
map("n", "<leader>bn", ":bnext<CR>", { desc = "Next Buffer" })
map("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous Buffer" })
map("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete Buffer" })

map("n", "<Tab>", ":bnext<CR>", { desc = "Next Buffer" })
map("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous Buffer" })

-- Files
map("n", "<C-f>", function()
	MiniFiles.open()
end, { desc = "File Explorer" })

map("n", "<leader>ff", function()
	Snacks.picker.explorer()
end, { desc = "Snacks Explorer and Picker" })

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
end, { desc = "Colorschemes" })

-- LSP
map("n", "gd", function()
	Snacks.picker.lsp_definitions()
end, { desc = "Goto Definition" })
map("n", "gI", function()
	Snacks.picker.lsp_implementations()
end, { desc = "Goto Implementation" })
map("n", "gr", function()
	Snacks.picker.lsp_references()
end, { desc = "See References" })
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

-- Git
map("n", "<leader>gl", function()
	Snacks.lazygit.open()
end, { desc = "Opens lazygit" })

map("n", "<leader>gd", function()
	Snacks.picker.git_diff()
end, { desc = "Git diff" })

map("n", "<leader>gs", function()
	Snacks.picker.git_status()
end, { desc = "Git status" })

map("n", "<leader>gb", function()
	Snacks.picker.git_branches()
end, { desc = "Git branches" })

map("n", "<leader>pp", function()
	Snacks.picker()
end, { desc = "See all snacks pickers" })

-- Leap
map({ "n", "x", "o" }, "t", "<Plug>(leap-forward)")
map({ "n", "x", "o" }, "T", "<Plug>(leap-backward)")
map({ "n", "x", "o" }, "gs", "<Plug>(leap-from-window)")
-- map("v", "<S-A-Down>", "<Esc>yp", { desc = "Clone code block down" })
-- map("v", "<S-A-Up>", "yP", { desc = "Clone code block up" })
