return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.shfmt,
				-- null_ls.builtins.diagnostics.cspell,
				-- null_ls.builtins.code_actions.cspell,
				-- null_ls.builtins.diagnostics.misspell,
				-- null_ls.builtins.formatting.beautysh,
				-- null_ls.builtins.diagnostics.eslint,
				-- null_ls.builtins.diagnostics.ruff,
				-- null_ls.builtins.formatting.ruff,
				-- null_ls.builtins.diagnostics.eslint_d,
				-- null_ls.builtins.completion.spell,
			},
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							-- For Neovim 0.8 and later versions, use this:
							vim.lsp.buf.format({ async = false })
						end,
					})
				end
			end,
		})

		-- Keymap for manual formatting
		vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
	end,
}
