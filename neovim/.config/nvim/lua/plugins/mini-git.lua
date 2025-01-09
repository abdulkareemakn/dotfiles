return {
	"echasnovski/mini-git",
	version = false,
	main = "mini.git",
	config = function()
		require("mini.git").setup()
	end,
}
