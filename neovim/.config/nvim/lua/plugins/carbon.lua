return {

	"ellisonleao/carbon-now.nvim",
	lazy = true,
	cmd = "CarbonNow",
	---@param opts cn.ConfigSchema
	opts = { [[ your custom config here ]] },
	config = function()
		require("carbon-now").setup({
			titlebar = "",
		})
	end,
	vim.keymap.set("v", "<leader>cn", ":CarbonNow<CR>", { silent = true }),
}
