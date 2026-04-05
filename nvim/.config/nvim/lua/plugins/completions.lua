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
			use_nvim_cmp_as_default = true,
		},
		-- 3. COMPLETION BEHAVIOR
		completion = {
			accept = {
				auto_brackets = { enabled = true },
			},
			documentation = { auto_show = true, auto_show_delay_ms = 250 },
			-- ghost_text = { enabled = true },
			menu = {
				draw = {
					treesitter = { "lsp" },
				},
			},
		},
		-- 4. SOURCES
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			per_filetype = {
				codecompanion = { "codecompanion" },
			},
			providers = {
				-- COPILOT (disabled)
				-- copilot = {
				--     name = "copilot",
				--     module = "blink-cmp-copilot",
				--     score_offset = 100,
				--     async = true,
				--     transform_items = function(_, items)
				--         local CompletionItemKind = require("blink.cmp.types").CompletionItemKind
				--         local kind_idx = #CompletionItemKind + 1
				--         CompletionItemKind[kind_idx] = "Copilot"
				--         for _, item in ipairs(items) do
				--             item.kind = kind_idx
				--         end
				--         return items
				--     end,
				-- },
				snippets = {
					name = "snippets",
					enabled = true,
					module = "blink.cmp.sources.snippets",
					opts = {
						friendly_snippets = false,
						search_paths = { vim.fn.stdpath("config") .. "/snippets" },
					},
				},
			},
		},
		-- 5. SIGNATURE HELP
		signature = { enabled = true },
	},
}
