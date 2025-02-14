return {
	"ggandor/leap.nvim",
	event = "VeryLazy",
	dependencies = {
		"tpope/vim-repeat",
	},
	config = function()
		require("leap").setup({})
	end,
}
