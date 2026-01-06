---@type vim.lsp.Config
return {
	cmd = { "yaml-language-server", "--stdio" },
	root_markers = {},
	filetypes = { "yaml", "yml", "yaml.docker-compose" },
	settings = {
		redhat = {
			telemetry = { enabled = false },
		},
		yaml = { format = { enabled = true } },
	},
	on_init = function(client)
		client.server_capabilities.documentFormattingProvider = true
	end,
}
