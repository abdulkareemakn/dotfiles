-- Lazy.nvim
require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.colorscheme")

-- vim.cmd([[colorscheme monokai]])

vim.lsp.enable({
	"clangd",
	"yamlls",
	"luals",
	"gopls",
	"taplo",
	"ruff",
	"ty",
	"tinymist",
	"vtsls",
	"ts_ls",
	"astro",
	"jdtls",
})
