return {
	"nvim-mini/mini.indentscope",
	version = false,
	event = "VeryLazy",
	config = function()
		require("mini.indentscope").setup()
	end,
}
