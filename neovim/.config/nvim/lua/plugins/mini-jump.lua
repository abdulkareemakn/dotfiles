return {
	{
		"echasnovski/mini.jump",
		version = false,
		event = "VeryLazy",
		config = function()
			require("mini.jump").setup({
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
			require("mini.jump2d").setup({})
		end,
	},
}
