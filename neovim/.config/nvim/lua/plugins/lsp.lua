return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"folke/lazydev.nvim",
				ft = "lua",
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},

		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			local lspconfig = require("lspconfig")
			local on_attach = function(client, bufnr)
				-- LSP keybindings
				local opts = { noremap = true, silent = true, buffer = bufnr }

				-- Go to definition
				--					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts, { desc = "Goto Definition" })

				-- Go to declaration
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts, { desc = "Goto Declaration" })

				-- Go to type definition
				vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, opts)

				-- Go to implementation
				--					vim.keymap.set("n", "gI", vim.lsp.buf.implementation, opts)

				-- Show hover documentation
				vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

				-- Show signature help
				vim.keymap.set("n", "gK", vim.lsp.buf.signature_help, opts)
				vim.keymap.set("i", "<c-k>", vim.lsp.buf.signature_help, opts)

				-- Renaming
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

				-- List references
				-- vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)

				-- Show diagnostic
				vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)

				-- Handled by mini-bracketed
				-- Go to next diagnostic
				-- vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

				-- Go to previous diagnostic
				-- vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

				-- Show diagnostic list
				vim.keymap.set("n", "<leader>dl", vim.diagnostic.setqflist, opts)

				-- Show code actions (e.g., fix code)
				vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

				-- Show document symbols
				-- vim.keymap.set("n", "<leader>ds", vim.lsp.buf.document_symbol, opts)

				-- Show workspace symbols
				-- vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, opts)
			end

			-- vim.lsp.enable({ " lua_ls " })

			vim.lsp.config.clangd = {
				cmd = { "clangd", "--background-index" },
				root_markers = { "compile_commands.json", "compile_flags.txt" },
				filetypes = { "c", "cpp" },
			}

			vim.lsp.enable({ "clangd" })

			local servers = { "lua_ls", "yamlls", "hyprls", "jsonls" }

			for _, server in ipairs(servers) do
				lspconfig[server].setup({
					on_attach = on_attach,
					capabilities = capabilities,
				})
			end

			-- 	vim.api.nvim_create_autocmd("LspAttach", {
			-- 		group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
			-- 		callback = function(args)
			-- 			local client = vim.lsp.get_client_by_id(args.data.client_id)
			-- 			if client == nil then
			-- 				return
			-- 			end
			-- 			if client.name == "ruff" then
			-- 				-- Disable hover in favor of Pyright
			-- 				client.server_capabilities.hoverProvider = false
			-- 			end
			-- 		end,
			-- 		desc = "LSP: Disable hover capability from Ruff",
			-- 	})
		end,
	},
}
