return {
	"nvim-mini/mini-git",
	enabled = false,
	version = false,
	main = "mini.git",
	config = function()
		require("mini.git").setup()
	end,
}
