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
			lspconfig.pyright.setup({
				capabilities = capabilities,
				settings = {
					pyright = {
						-- Using Ruff's import organizer
						disableOrganizeImports = true,
					},
					python = {
						analysis = {
							-- Ignore all files for analysis to exclusively use Ruff for linting
							ignore = { "*" },
						},
					},
				},
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			--lspconfig.pylsp.setup({})
			--lspconfig.pylsp.setup({
			--	capabilities = capabilities,
			--	settings = {
			--		pylsp = {
			--			plugins = {
			--				pycodestyle = { enabled = false }, -- Disable pylsp linting
			--				pyflakes = { enabled = false }, -- Disable pylsp linting
			--				pylint = { enabled = false }, -- Disable pylint
			--				autopep8 = { enabled = false }, -- Disable pylsp formatting
			--				black = { enabled = false }, -- Disable black in pylsp
			--				yapf = { enabled = false }, -- Disable yapf formatting
			--			},
			--		},
			--	},
			--	on_attach = function(client, bufnr)
			--		-- Disable formatting in pylsp to avoid conflicts with Ruff
			--		client.server_capabilities.documentFormattingProvider = false
			--		client.server_capabilities.documentRangeFormattingProvider = false
			--	end,
			--		})
			lspconfig.ruff.setup({
				--			on_attach = function(client, bufnr)
				--				-- Disable everything except formatting and linting
				--				client.server_capabilities.documentFormattingProvider = true
				--				client.server_capabilities.documentRangeFormattingProvider = true
				--				client.server_capabilities.diagnosticProvider = true
				--			end,
			})
			--		lspconfig.clangd.setup({})
			--		lspconfig.clangd.setup({})
			--
			--				require("lspconfig").ruff.setup({
			--					init_options = {
			--						settings = {
			--							-- Server settings should go here
			--						},
			--					},
			--				})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
