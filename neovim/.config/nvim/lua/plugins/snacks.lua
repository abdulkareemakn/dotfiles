return {
	"folke/snacks.nvim",
	priority = 500,
	lazy = false,
	opts = {
		bigfile = { enabled = true },
		dashboard = { enabled = true },
		input = { enabled = true },
		quickfile = { enabled = true },
		picker = {
			enabled = true,
			formatters = {
				file = {
					filename_first = true,
				},
			},
		},
		notifier = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = true },
		terminal = { enabled = true },
	},
}
