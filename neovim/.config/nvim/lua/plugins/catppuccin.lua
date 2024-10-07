return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		enabled = false,
		config = function()
			vim.cmd("colorscheme catppuccin-mocha")
		end,
	},
}
