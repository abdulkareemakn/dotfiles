return {
	{
		"mistricky/codesnap.nvim",
		build = "make",
		config = function()
			require("codesnap").setup({
				{
					mac_window_bar = true,
					title = "CodeSnap.nvim",
					code_font_family = "FiraCode Nerd Font",
					watermark_font_family = "Pacifico",
					watermark = "",
					bg_theme = "bamboo",
					breadcrumbs_separator = "/",
					has_breadcrumbs = false,
					has_line_number = false,
					show_workspace = false,
					min_width = 0,
					bg_x_padding = 122,
					bg_y_padding = 82,
					save_path = os.getenv("XDG_PICTURES_DIR") or (os.getenv("HOME") .. "/Pictures"),
				},
			})

			--vim.keymap.set("x", "<leader>gs", "<cmd>CodeSnapSave<cr>")
		end,
	},
}
