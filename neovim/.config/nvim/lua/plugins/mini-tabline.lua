return {
	"echasnovski/mini.tabline",
	version = false,
	config = function()
		require("mini.tabline").setup({})
		-- Navigate to the next buffer
		vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })

		-- Navigate to the previous buffer
		vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })

		-- Close the current buffer
		vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete buffer" })

		-- Pick a buffer from the buffer list
		vim.keymap.set("n", "<leader>bb", ":ls<CR>:b<Space>", { desc = "Pick buffer" })
	end,
}
