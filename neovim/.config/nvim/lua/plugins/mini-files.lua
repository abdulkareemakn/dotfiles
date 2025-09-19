return {
	"nvim-mini/mini.files",
	event = "VeryLazy",
	version = false,
	config = function()
		require("mini.files").setup({
			windows = {
				preview = false,
				width_focus = 25,
				width_preview = 50,
			},
		})
	end,
}
