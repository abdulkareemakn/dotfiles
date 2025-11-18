-- Lazy.nvim
require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.autocmds")

vim.lsp.enable({ "clangd", "yamlls", "luals" })

-- Colorscheme
-- vim.cmd.colorscheme("catppuccin-latte")
