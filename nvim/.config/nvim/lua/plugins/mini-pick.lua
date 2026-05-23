return {
	"nvim-mini/mini.pick",
	enabled = false,
	version = false,

	config = function()
		require("mini.pick").setup({
			options = {
				use_cache = true,
			},
		})
	end,
}
