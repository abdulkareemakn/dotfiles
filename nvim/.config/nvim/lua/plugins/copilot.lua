return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	opts = {
		-- Disable the native interface so Blink can handle it
		suggestion = {
			enabled = true,
			auto_trigger = true,
			hide_during_completion = true,
			debounce = 75,
			keymap = {
				accept = "<M-l>", -- Alt+l  → accept full suggestion
				accept_word = "<M-w>", -- Alt+w  → accept one word
				accept_line = "<M-e>", -- Alt+e  → accept one line
				next = "<M-]>", -- Alt+]  → next suggestion
				prev = "<M-[>", -- Alt+[  → prev suggestion
				dismiss = "<C-]>", -- Ctrl+] → dismiss
			},
		},
		panel = { enabled = false },
	},
}
