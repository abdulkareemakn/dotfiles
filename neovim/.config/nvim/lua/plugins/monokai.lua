return {
	"loctvl842/monokai-pro.nvim",
	enabled = true,
	config = function()
		require("monokai-pro").setup({
			filter = "machine",
		})
		vim.cmd("colorscheme monokai-pro")
	end,
}
