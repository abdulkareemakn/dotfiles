-- Lazy.nvim
require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.autocmds")

vim.cmd([[colorscheme rose-pine]])

vim.lsp.enable({ "clangd", "yamlls", "luals", "gopls", "taplo", "ruff", "ty", "tinymist", "vtsls" })

-- Colorscheme
-- vim.cmd.colorscheme("catppuccin-latte")
