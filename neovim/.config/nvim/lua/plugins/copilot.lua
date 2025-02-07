return {
	{
		"zbirenbaum/copilot.lua",
		enabled = false,
		cmd = "Copilot",
		event = "BufReadPost",
		config = function()
			require("copilot").setup({
				suggestion = { enabled = false },
				panel = { enabled = false },
				filetypes = {
					markdown = true,
					help = true,
				},
			})
		end,
	},

	{
		"giuxtaposition/blink-cmp-copilot",
		enabled = false,
	},
}
