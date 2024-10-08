return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "eslint", "lua_ls", "bashls", "clangd", "gopls", "pylsp" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			require("cmp").setup({
				sources = {
					{ name = "nvim_lsp" },
				},
			})
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.bashls.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			lspconfig.gopls.setup({
				capabilities = capabilities,
			})
			lspconfig.eslint.setup({
				capabilities = capabilities,
			})
			--lspconfig.pylsp.setup({})
			lspconfig.ruff.setup({
				capabilities = capabilities,
			})
			--		lspconfig.clangd.setup({})
			--		lspconfig.clangd.setup({})
			--
			config = function()
				require("lspconfig").ruff.setup({
					init_options = {
						settings = {
							-- Server settings should go here
						},
					},
				})
				require("lspconfig").eslint.setup({})
			end

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
