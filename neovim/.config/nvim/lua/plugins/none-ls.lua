return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			debug = true,
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.shfmt,
				--null_ls.builtins.formatting.beautysh,
				--null_ls.builtins.diagnostics.eslint,
				--null_ls.builtins.diagnostics.ruff,
				--null_ls.builtins.formatting.ruff,
				--null_ls.builtins.diagnostics.eslint_d,
				--null_ls.builtins.completion.spell,
			},
		})
		vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
	end,
}