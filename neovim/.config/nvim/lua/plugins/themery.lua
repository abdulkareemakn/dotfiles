return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			livePreview = true,

			themes = {
				{ name = "Halcyon", colorscheme = "halcyon" },
				{ name = "Catppuccin", colorscheme = "catppuccin-latte" },
			},
		})
	end,
}
