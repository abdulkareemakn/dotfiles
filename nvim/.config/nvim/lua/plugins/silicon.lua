return {
	"michaelrommel/nvim-silicon",
	lazy = true,
	cmd = "Silicon",
	main = "nvim-silicon",
	opts = {
		-- Configuration here, or leave empty to use defaults
		line_offset = function(args)
			return args.line1
		end,

		theme = "GitHub",
		font = "RobotoMono Nerd Font",
		to_clipboard = true,

		output = function()
			-- 1. Define your absolute path
			local dir = "/home/abdulkareem/Pictures/Code/"

			-- 2. Get the current file extension (e.g., 'lua', 'cpp', 'js')
			local ext = vim.fn.expand("%:e")

			-- 3. Safety check: if file has no extension (like a Makefile), default to 'code' or 'txt'
			if ext == "" then
				ext = "code"
			end

			-- 4. Return the full path
			-- Example result: /home/abdulkareem/Pictures/Code/2025-12-13T18-40-00Z_lua.png
			return dir .. os.date("%Y-%m-%dT%H-%M-%S") .. "_" .. ext .. ".png"
		end,
	},
}
