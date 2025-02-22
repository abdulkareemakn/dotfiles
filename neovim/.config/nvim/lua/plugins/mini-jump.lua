return {
	{
		"echasnovski/mini.jump",
		version = false,
		event = "VeryLazy",
		config = function()
			require("mini.jump").setup({
				delay = {
					highlight = 100000000000,
				},
				mappings = {
					forward_till = "",
					backward_till = "",
				},
			})
		end,
	},
	{
		"echasnovski/mini.jump2d",
		version = false,
		event = "VeryLazy",
		config = function()
			require("mini.jump2d").setup({
				mappings = {
					start_jumping = "m",
				},
			})
		end,
	},
}
