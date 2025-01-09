return {
	"akinsho/bufferline.nvim",
	version = "*",
	enabled = false,
	config = function()
		require("bufferline").setup({
			options = {
				always_show_bufferline = false,
			},
		})
		vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })

		vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })

		vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete buffer" })

		vim.keymap.set("n", "<leader>bb", ":BufferLinePick<CR>", { desc = "Pick a buffer" })
	end,
}
