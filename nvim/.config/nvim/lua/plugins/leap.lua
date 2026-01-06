return {
	"ggandor/leap.nvim",
    enabled = false,
	event = "VeryLazy",
	dependencies = {
		"tpope/vim-repeat",
	},
	config = function()
		require("leap").setup({})
	end,
}
