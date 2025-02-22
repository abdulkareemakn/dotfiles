return {
	"echasnovski/mini.clue",
	event = "VeryLazy",
	version = false,
	config = function()
		local miniclue = require("mini.clue")
		miniclue.setup({
			triggers = {
				-- Leader triggers
				{ mode = "n", keys = "<Leader>" },
				{ mode = "x", keys = "<Leader>" },

				-- Built-in completion
				{ mode = "i", keys = "<C-x>" },

				-- `g` key
				{ mode = "n", keys = "g" },
				{ mode = "x", keys = "g" },

				-- Marks
				{ mode = "n", keys = "'" },
				{ mode = "n", keys = "`" },
				{ mode = "x", keys = "'" },
				{ mode = "x", keys = "`" },

				-- Registers
				{ mode = "n", keys = '"' },
				{ mode = "x", keys = '"' },
				{ mode = "i", keys = "<C-r>" },
				{ mode = "c", keys = "<C-r>" },

				-- Window commands
				{ mode = "n", keys = "<C-w>" },

				-- `z` key
				{ mode = "n", keys = "z" },
				{ mode = "x", keys = "z" },

				-- Mini Bracketed
				{ mode = "n", keys = "[" },
				{ mode = "n", keys = "]" },
			},

			clues = {
				-- Enhance this by adding descriptions for <Leader> mapping groups
				{ mode = "n", keys = "<leader>b", desc = " Buffers" },
				{ mode = "n", keys = "<leader>c", desc = "Code" },
				{ mode = "n", keys = "<leader>g", desc = "󰊢 Git" },
				{ mode = "n", keys = "<leader>l", desc = "Leap Forward" },
				{ mode = "n", keys = "<leader>L", desc = "Leap Backward" },
				{ mode = "n", keys = "<leader>t", desc = "Theme" },
				{ mode = "n", keys = "<leader>x", desc = "Trouble" },
				miniclue.gen_clues.builtin_completion(),
				miniclue.gen_clues.g(),
				miniclue.gen_clues.marks(),
				miniclue.gen_clues.registers(),
				miniclue.gen_clues.windows(),
				miniclue.gen_clues.z(),
			},
		})
	end,
}
