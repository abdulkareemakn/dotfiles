return {
	"saghen/blink.cmp",
	enabled = true,
	version = "*",
	event = { "InsertEnter", "CmdlineEnter" },
	dependencies = {
		"giuxtaposition/blink-cmp-copilot",
	},

	opts = {
		keymap = { preset = "super-tab" },

		-- 2. APPEARANCE
		appearance = {
			nerd_font_variant = "normal",
			-- Sets the fallback highlight groups to nvim-cmp's highlight groups
			use_nvim_cmp_as_default = true,
		},

		-- 3. COMPLETION BEHAVIOR
		completion = {
			accept = {
				auto_brackets = { enabled = true },
			},
			documentation = { auto_show = true, auto_show_delay_ms = 250 },
			-- ghost_text = { enabled = true }, -- Shows the AI suggestion as grey text ahead of cursor

			menu = {
				draw = {
					treesitter = { "lsp" },
				},
			},
		},

		-- 4. SOURCES: Custom Snippets + Copilot + No Friendly-Snippets
		sources = {
			-- default = { "lsp", "path", "snippets", "buffer", "copilot" },
			default = { "lsp", "path", "snippets", "buffer" },

			providers = {
				-- COPILOT CONFIG
				-- copilot = {
				-- 	name = "copilot",
				-- 	module = "blink-cmp-copilot",
				-- 	score_offset = 100, -- Boosts AI to the top
				-- 	async = true,
				-- 	transform_items = function(_, items)
				-- 		local CompletionItemKind = require("blink.cmp.types").CompletionItemKind
				-- 		local kind_idx = #CompletionItemKind + 1
				-- 		CompletionItemKind[kind_idx] = "Copilot"
				-- 		for _, item in ipairs(items) do
				-- 			item.kind = kind_idx
				-- 		end
				-- 		return items
				-- 	end,
			},

			-- CUSTOM SNIPPETS CONFIG
			snippets = {
				name = "snippets",
				enabled = true,
				module = "blink.cmp.sources.snippets",
				opts = {
					-- Disables friendly-snippets implicit loading
					friendly_snippets = false,
					-- Uses your specific local path: ~/.config/nvim/snippets/
					search_paths = { vim.fn.stdpath("config") .. "/snippets" },
				},
			},
		},
	},

	-- 5. SIGNATURE HELP
	signature = { enabled = true },
}
