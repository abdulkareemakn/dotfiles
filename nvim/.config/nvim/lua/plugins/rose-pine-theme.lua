return {
	"rose-pine/neovim",
	enabled = true,
	lazy = false,
	priority = 999,
	config = function()
		require("rose-pine").setup({
			dark_variant = "moon",
		})
	end,
}
