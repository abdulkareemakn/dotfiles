return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-mini/mini.icons" },
	---@module "fzf-lua"
	---@type fzf-lua.Config|{}
	---@diagnostics disable: missing-fields
	opts = {},
	keys = {
		"<leader>ff",
		"<cmd>FzfLua files<cr>",
		desc = "Find Files (FZF)",
	},
	---@diagnostics enable: missing-fields
}
