return {
	"echasnovski/mini.files",
	version = false,
	config = function()
		require("mini.files").setup()

		vim.keymap.set("n", "<C-f>", ":lua MiniFiles.open()<CR>,{}")
	end,
}
