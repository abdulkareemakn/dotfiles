return {
	"mfussenegger/nvim-lint",
	enabled = false,
	config = function()
		require("lint").linters_by_ft = {
			--			python = { "ruff" },
			javascript = { "eslint_d" },
		}
		require("lint").linters = {
			eslint_d = {
				cmd = "eslint_d",
				args = { "--stdin", "--stdin-filename", "%filepath", "--format", "json" },
				stdin = true,
				stream = "stdout",
				parser = function(output, _)
					local decoded = vim.fn.json_decode(output)
					if not decoded or #decoded == 0 then
						return {}
					end
					local items = {}
					for _, result in ipairs(decoded) do
						for _, message in ipairs(result.messages) do
							table.insert(items, {
								lnum = message.line,
								col = message.column,
								end_lnum = message.endLine,
								end_col = message.endColumn,
								severity = message.severity,
								message = message.message,
								source = "eslint_d",
							})
						end
					end
					return items
				end,
			},
		}

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				require("lint").try_lint()
				--				require("lint").try_lint("cspell")
			end,
		})
	end,
}
