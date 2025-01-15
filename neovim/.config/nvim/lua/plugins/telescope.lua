return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		enabled = false,
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({})
			local builtin = require("telescope.builtin")
			--			vim.keymap.set("n", "<leader><leader>", builtin.find_files, { desc = "Find files" })
			--			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
			--			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
			--			vim.keymap.set("n", "<leader>th", ":Telescope colorscheme<CR>", { desc = "Theme switcher" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		enabled = false,
		config = function()
			-- This is your opts table
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							-- even more opts
						}),

						-- pseudo code / specification for writing custom displays, like the one
						-- for "codeactions"
						-- specific_opts = {
						--   [kind] = {
						--     make_indexed = function(items) -> indexed_items, width,
						--     make_displayer = function(widths) -> displayer
						--     make_display = function(displayer) -> function(e)
						--     make_ordinal = function(e) -> string
						--   },
						--   -- for example to disable the custom builtin "codeactions" display
						--      do the following
						--   codeactions = false,
						-- }
					},
				},
			})
			-- To get ui-select loaded and working with telescope, you need to call
			-- load_extension, somewhere after setup function:
			require("telescope").load_extension("ui-select")
		end,
	},
}
