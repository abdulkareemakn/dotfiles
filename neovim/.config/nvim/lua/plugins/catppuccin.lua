return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		enabled = true,
		config = function()
			vim.cmd("colorscheme catppuccin-mocha")
		end,
	},
}
