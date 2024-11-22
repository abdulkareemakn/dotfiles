return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			livePreview = true,

			themes = {

				{ name = "Ayu Light", colorscheme = "ayu", before = [[vim.g.ayucolor = "light"]] },
				{ name = "Catppuccin", colorscheme = "catppuccin-latte" },
				{
					name = "Material",
					colorscheme = "material",
					before = [[vim.g.material_style = "lighter"]],
				},
				{ name = "TokyoNight", colorscheme = "tokyonight-day" },

				{ name = "Ayu Mirage", colorscheme = "ayu", before = [[vim.g.ayucolor = "mirage"]] },
				{ name = "Monokai", colorscheme = "monokai-pro" },
				{ name = "TokyoNight Moon", colorscheme = "tokyonight-moon" },
				{ name = "TokyoNight Storm", colorscheme = "tokyonight-storm" },
			},
		})
	end,
}
