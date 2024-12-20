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
				ensure_installed = {
					"jsonls",
					"eslint",
					"lua_ls",
					"bashls",
					"clangd",
					"gopls",
					"basedpyright",
					"ruff",
					"ts_ls",
					"taplo",
				},
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
			lspconfig.basedpyright.setup({
				capabilities = capabilities,
				settings = {
					basedpyright = {
						analysis = {
							diagnosticSeverityOverrides = {
								reportUnusedVariable = "none",
								reportUnusedImport = "none",
							},
						},
					},
				},
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ruff.setup({
				--			on_attach = function(client, bufnr)
				--				-- Disable everything except formatting and linting
				--				client.server_capabilities.documentFormattingProvider = true
				--				client.server_capabilities.documentRangeFormattingProvider = true
				--				client.server_capabilities.diagnosticProvider = true
				--			end,
			})
			require("lspconfig").jsonls.setup({
				capabilities = capabilities,
				settings = {
					json = {
						schemas = require("schemastore").json.schemas(),
						validate = { enable = true },
					},
				},
			})
			require("lspconfig").taplo.setup({
				capabilities = capabilities,
				settings = {
					taplo = {
						schema = {
							associations = {
								["~/.config/starship.toml"] = "https://starship.rs/config-schema.json",
							},
						},
					},
				},
			})
			--				require("lspconfig").ruff.setup({
			--					init_options = {
			--						settings = {
			--							-- Server settings should go here
			--						},
			--					},
			--				})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})

			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
