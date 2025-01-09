-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Spacing
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Colors
vim.cmd("set termguicolors")

-- Cursor
vim.cmd([[
highlight Cursor guibg=Black guifg=White
highlight iCursor guibg=Black guifg=White
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver25-iCursor
]])
