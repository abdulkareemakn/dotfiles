local M = {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({

			ensure_installed = { "c", "lua", "cpp", "python", "javascript", "html", "go", "toml", "json" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}

return { M }
