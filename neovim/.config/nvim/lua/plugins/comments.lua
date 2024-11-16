return -- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
{
	"numToStr/Comment.nvim",
	enabled = false,
	opts = {
		-- add any options here
	},
	config = function()
		require("Comment").setup({})
	end,
}
