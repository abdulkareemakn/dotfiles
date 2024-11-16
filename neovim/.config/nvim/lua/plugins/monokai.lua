return {
	"loctvl842/monokai-pro.nvim",
	lazy = false,
	priority = 500,
	enabled = true,
	config = function()
		require("monokai-pro").setup({
			filter = "machine",
		})
		-- 		vim.cmd("colorscheme monokai-pro")
	end,
}
