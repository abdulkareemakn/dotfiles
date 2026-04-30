return {
	"saghen/blink.cmp",
	enabled = true,
	version = "*",
	event = { "InsertEnter", "CmdlineEnter" },
	dependencies = {
		"fang2hou/blink-copilot",
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
			default = { "lsp", "path", "snippets", "buffer", "copilot" },
			per_filetype = {
				codecompanion = { "codecompanion" },
			},
			providers = {
				copilot = {
					name = "copilot",
					module = "blink-copilot",
					async = true,
					score_offset = 100,
					opts = {
						max_completions = 3,
						max_attempts = 4,
						kind = "Copilot",
						debounce = 750,
						auto_refresh = {
							backward = true,
							forward = true,
						},
					},
				},
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
