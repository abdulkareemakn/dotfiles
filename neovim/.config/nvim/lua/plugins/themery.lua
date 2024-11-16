return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			livePreview = true,

			themes = {
				{ name = "Catppuccin", colorscheme = "catppuccin-latte" },
				{ name = "Material", colorscheme = "material", before = [[vim.g.material_style = "lighter"]] },
				{ name = "Ayu Light", colorscheme = "ayu", before = [[vim.g.ayucolor = "light"]] },

				{ name = "Monokai", colorscheme = "monokai-pro" },
				{ name = "Ayu Mirage", colorscheme = "ayu", before = [[vim.g.ayucolor = "mirage"]] },
			},
		})
	end,
}
