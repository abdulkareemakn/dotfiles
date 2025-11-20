-- Lazy.nvim
require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.autocmds")

vim.lsp.enable({ "clangd", "yamlls", "luals", "gopls" })

-- Colorscheme
-- vim.cmd.colorscheme("catppuccin-latte")
