return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = {
				{
					name = "Ayu Light",
					colorscheme = "ayu",
					before = [[vim.g.ayucolor="light"]],
				},

				{ name = "Catppuccin Latte", colorscheme = "catppuccin-latte" },

				{ name = "Github Light", colorscheme = "github_light" },
				{ name = "Github Light Default", colorscheme = "github_light_default" },
				{ name = "Github Light High Contrast", colorscheme = "github_light_high_contrast" },
				{ name = "Github Light Colorblind", colorscheme = "github_light_colorblind" },
				{ name = "Github Light Tritanopia", colorscheme = "github_light_tritanopia" },

				{
					name = "Gruvbox Light",
					colorscheme = "gruvbox",
					before = [[vim.o.background="light"]],
				},

				-- { name = "Kanagawa Lotus", colorscheme = "kanagawa-lotus" },

				{
					name = "Material Lighter",
					colorscheme = "material",
					before = [[vim.g.material_style="lighter"]],
				},

				{ name = "OneLight", colorscheme = "onelight" },

				{ name = "Rose Pine Dawn", colorscheme = "rose-pine-dawn" },

				{
					name = "Ayu Dark",
					colorscheme = "ayu",
					before = [[vim.g.ayucolor="dark"]],
				},
				{
					name = "Ayu Mirage",
					colorscheme = "ayu",
					before = [[vim.g.ayucolor="mirage"]],
				},

				{ name = "TokyoNight Day", colorscheme = "tokyonight-day" },

				{ name = "Catppuccin Frappe", colorscheme = "catppuccin-frappe" },
				{ name = "Catppuccin Macchiato", colorscheme = "catppuccin-macchiato" },
				{ name = "Catppuccin Mocha", colorscheme = "catppuccin-mocha" },

				{ name = "Github Dark", colorscheme = "github_dark" },
				{ name = "Github Dark Dimmed", colorscheme = "github_dark_dimmed" },
				{ name = "Github Dark Default", colorscheme = "github_dark_default" },
				{ name = "Github Dark High Contrast", colorscheme = "github_dark_high_contrast" },
				{ name = "Github Dark Colorblink", colorscheme = "github_dark_colorblind" },
				{ name = "Github Dark Tritanopia", colorscheme = "github_dark_tritanopia" },

				{
					name = "Gruvbox Dark",
					colorscheme = "gruvbox",
					before = [[vim.o.background="dark"]],
				},

				{ name = "Halcyon", colorscheme = "halcyon" },

				-- { name = "Kanagawa Wave", colorscheme = "kanagawa-wave" },
				-- { name = "Kanagawa Dragon", colorscheme = "kanagawa-dragon" },

				{
					name = "Material Darker",
					colorscheme = "material",
					before = [[vim.g.material_style="darker"]],
				},

				{
					name = "Material Oceanic",
					colorscheme = "material",
					before = [[vim.g.material_style="oceanic"]],
				},

				{
					name = "Material Palenight",
					colorscheme = "material",
					before = [[vim.g.material_style="palenight"]],
				},

				{
					name = "Material Deep Ocean",
					colorscheme = "material",
					before = [[vim.g.material_style="deep ocean"]],
				},

				{
					name = "Monokai Pro",
					colorscheme = "monokai-pro",
					before = [[require("monokai-pro").setup({filter="pro"})]],
				},
				{
					name = "Monokai Pro Octagon",
					colorscheme = "monokai-pro",
					before = [[require("monokai-pro").setup({filter="octagon"})]],
				},
				{
					name = "Monokai Pro Machine",
					colorscheme = "monokai-pro",
					before = [[require("monokai-pro").setup({filter="machine"})]],
				},
				{
					name = "Monokai Pro Ristretto",
					colorscheme = "monokai-pro",
					before = [[require("monokai-pro").setup({filter="ristretto"})]],
				},

				{
					name = "Monokai Pro Spectrum",
					colorscheme = "monokai-pro",
					before = [[require("monokai-pro").setup({filter="spectrum"})]],
				},

				{
					name = "Monokai Classic",
					colorscheme = "monokai-pro",
					before = [[require("monokai-pro").setup({filter="classic"})]],
				},

				{ name = "OneDark", colorscheme = "onedark" },
				{ name = "OneDark Vivid", colorscheme = "onedark_vivid" },
				{ name = "OneDark Dark", colorscheme = "onedark_dark" },

				{ name = "Rose Pine", colorscheme = "rose-pine-main" },
				{ name = "Rose Pine Moon", colorscheme = "rose-pine-moon" },

				{ name = "TokyoNight Night", colorscheme = "tokyonight-night" },
				{ name = "TokyoNight Storm", colorscheme = "tokyonight-storm" },
				{ name = "TokyoNight Moon", colorscheme = "tokyonight-moon" },
			},
		})
	end,
}
