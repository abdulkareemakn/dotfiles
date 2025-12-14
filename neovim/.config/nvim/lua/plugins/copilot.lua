return {
	"zbirenbaum/copilot.lua",
	enabled = false,
	cmd = "Copilot",
	event = "InsertEnter",
	opts = {
		-- Disable the native interface so Blink can handle it
		suggestion = { enabled = false },
		panel = { enabled = false },
	},
}
