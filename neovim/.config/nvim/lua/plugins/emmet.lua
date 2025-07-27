return {
	"olrtg/nvim-emmet",
    enabled = false,
	ft = { "html" },
	event = "VeryLazy",
	config = function()
		vim.keymap.set({ "n", "v" }, "<leader>ee", require("nvim-emmet").wrap_with_abbreviation)
	end,
}
