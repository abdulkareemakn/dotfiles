return {
	"nvim-mini/mini.comment",
	version = false,
	event = "VeryLazy",
	config = function()
		require("mini.comment").setup()
	end,
}
