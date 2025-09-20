return {
	"max397574/better-escape.nvim",
	enabled = false,
	event = "VeryLazy",
	config = function()
		require("better_escape").setup({
			mappings = {
				i = {
					j = {
						k = "<Esc>",
					},
					k = {
						j = "<Esc>",
					},
				},
			},
		})
	end,
}
