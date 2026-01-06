return {
	{
		"nvim-treesitter/nvim-treesitter",
		version = false,
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				auto_install = true,
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },
				textobjects = {
					select = { enable = false },
					swap = { enable = true },
					move = { enable = true },
					lsp_interop = { enable = true },
				},
			})
		end,
	}
}
