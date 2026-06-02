return {
	function()
		require("monokai-pro").setup({
			filter = "spectrum",
		})
	end,

	vim.cmd.colorscheme("monokai-pro"),
}
