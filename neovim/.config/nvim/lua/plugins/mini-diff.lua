return {
	"nvim-mini/mini.diff",
	version = false,
	event = "VeryLazy",
	config = function()
		require("mini.diff").setup()
	end,
}
