return {
	"folke/snacks.nvim",
	priority = 1050,
	lazy = false,
	opts = {
		animate = { enabled = true },
		bigfile = { enabled = true },
		dashboard = {
			preset = {
				keys = {
					{ icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
					{ icon = "󰙅", key = "e", desc = "File Explorer", action = ":lua Snacks.picker.explorer()" },
					{
						icon = " ",
						key = "g",
						desc = "Find Text",
						action = ":lua Snacks.dashboard.pick('live_grep')",
					},
					{
						icon = " ",
						key = "r",
						desc = "Recent Files",
						action = ":lua Snacks.dashboard.pick('oldfiles')",
					},
					{
						icon = " ",
						key = "c",
						desc = "Config",
						action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
					},
					{ icon = " ", key = "s", desc = "Restore Session", section = "session" },
					{
						icon = "󰒲 ",
						key = "L",
						desc = "Lazy",
						action = ":Lazy",
						enabled = package.loaded.lazy ~= nil,
					},
					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
				},
			},
		},
		explorer = { enabled = true },
		input = { enabled = true },
		lazygit = { enabled = true },
		notifier = { enabled = true },
		picker = {
			enabled = true,
			formatters = {
				file = {
					filename_first = true,
				},
			},
		},
		quickfile = { enabled = true },
		rename = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = true },
		terminal = {
			enabled = true,
			win = {
				wo = {
					winbar = "",
				},
			},
		},
	},
}
