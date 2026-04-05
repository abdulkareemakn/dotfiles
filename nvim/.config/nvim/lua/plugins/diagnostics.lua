return {
	"rachartier/tiny-inline-diagnostic.nvim",
	enabled = false,
	event = "VeryLazy",
	priority = 1000,
	config = function()
		require("tiny-inline-diagnostic").setup({
			preset = "minimal",
			show_source = {
				enabled = true,
			},
		})
	end,
}
