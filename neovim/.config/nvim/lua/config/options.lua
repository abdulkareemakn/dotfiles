local opt = vim.opt

-- Line Numbers
opt.number = true
opt.relativenumber = true

-- Spacing
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Searching
opt.ignorecase = true
opt.smartcase = true

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Colors
vim.cmd("set termguicolors")
