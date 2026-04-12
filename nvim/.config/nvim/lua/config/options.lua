local opt = vim.opt

-- Line Numbers
opt.number = true
opt.relativenumber = true

-- Swap file
opt.swapfile = false

-- Spacing
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- Searching
opt.ignorecase = true
opt.smartcase = true

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Panes
opt.splitright = true
opt.splitbelow = true

-- Word Wrap
-- opt.wrap = false

-- Scroll
opt.scrolloff = 999

opt.fillchars:append({ eob = " " })

-- Colors
vim.cmd("set termguicolors")

opt.cmdheight = 0

require("vim._core.ui2").enable({})
