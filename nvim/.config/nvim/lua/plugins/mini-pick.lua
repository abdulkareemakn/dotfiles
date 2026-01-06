return {
	"nvim-mini/mini.pick",
	enabled = true,
	version = false,

	config = function()
		require("mini.pick").setup({
			options = {
				use_cache = true,
			},
		})
	end,
}
