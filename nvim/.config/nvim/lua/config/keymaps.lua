local map = vim.keymap.set

-- Line breaks
map("n", "<C-CR>", "m`o<Esc>``", { desc = "Insert blankline below" })
map("n", "<C-S-CR>", "m`O<Esc>``", { desc = "Insert blankline above" })

map("n", "<C-s", ":write<CR>", { desc = "Write file" })
map("n", "<leader>q", ":quit<CR>")

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

-- Terminal
map("n", "<leader>ct", function()
	Snacks.terminal.open()
end, { desc = "Open Terminal" })

-- Buffers
-- map("n", "<leader>bb", ":Telescope buffers<CR>", { desc = "See open buffers" })
-- map("n", "<leader>bb", function()
-- 	Snacks.picker.buffers()
-- end, { desc = "Buffers" })
map("n", "<leader>bb", function()
	MiniPick.builtin.buffers()
end, { desc = "Buffers" })
map("n", "<leader>bn", ":bnext<CR>", { desc = "Next Buffer" })
map("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous Buffer" })
map("n", "<leader>bd", function()
	Snacks.bufdelete()
end, { desc = "Delete Buffer" })

map("n", "<Tab>", ":bnext<CR>", { desc = "Next Buffer" })
map("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous Buffer" })

-- Files
-- map("n", "<C-f>", function()
-- 	MiniFiles.open()
-- end, { desc = "File Explorer" })

map("n", "<leader>fe", function()
	Snacks.picker.explorer()
end, { desc = "Snacks Explorer and Picker" })

map("n", "<leader><space>", function()
	MiniPick.builtin.files()
end, { desc = "Find Files" })

map("n", "<leader>fg", function()
	Snacks.picker.grep()
end, { desc = "Grep" })

map("n", "<leader>fb", function()
	Snacks.picker.grep_buffers()
end)

map("n", "<leader>sd", function()
	Snacks.picker.diagnostics()
end, { desc = "Diagnostics" })

map("n", "<leader>ht", function()
	Snacks.picker.colorschemes()
end, { desc = "Colorschemes" })

-- LSP
map("n", "gr", function()
	Snacks.picker.lsp_references()
end, { desc = "See References" })
map("n", "<leader>ls", function()
	Snacks.picker.lsp_symbols()
end, { desc = "LSP Symbols" })
map("n", "<leader>lS", function()
	Snacks.picker.lsp_workspace_symbols()
end, { desc = "LSP Symbols" })

-- Silicon
map("v", "<leader>sc", function()
	require("nvim-silicon").clip()
end, { desc = "Copy code screenshot to clipboard" })

map("v", "<leader>sp", function()
	require("nvim-silicon").clip()
end, { desc = "Save code screenshot" })

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

-- Splits
map("n", "<C-h>", "<C-w>h", { desc = "Focus left" })
map("n", "<C-j>", "<C-w>j", { desc = "Focus down" })
map("n", "<C-k>", "<C-w>k", { desc = "Focus up" })
map("n", "<C-l>", "<C-w>l", { desc = "Focus right" })

-- map("v", "<S-A-Down>", "<Esc>yp", { desc = "Clone code block down" })
-- map("v", "<S-A-Up>", "yP", { desc = "Clone code block up" })
--

map("n", "]t", function()
	require("todo-comments").jump_next()
end, { desc = "Next todo comment" })

map("n", "[t", function()
	require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })

map("n", "<leader>cr", function()
	local file = vim.fn.expand("%:p") -- full path to file
	local name = vim.fn.expand("%:p:r") -- same path, no extension
	local cmd = { "bash", "-c", string.format("g++ %s -o %s && %s", file, name, name) }

	Snacks.terminal.open(cmd, {
		cwd = vim.fn.expand("%:p:h"), -- run in the file's directory
		start_insert = true, -- enter insert mode so you see output
		auto_close = false, -- keep terminal open after exit
		win = { position = "bottom" }, -- floating window (you can change to "bottom")
	})
end, { desc = "Compile & run current C++ file" })

-- Scratch
map("n", "<leader>.", function()
	Snacks.scratch()
end, { desc = "Toggle Scratch Buffer" })
map("n", "<leader>S", function()
	Snacks.scratch.select()
end, { desc = "Select Scratch Buffer" })

-- Grug-far
map("n", "<leader>cg", function()
	require("grug-far").open({ prefills = { paths = vim.fn.expand("%") } })
end)
