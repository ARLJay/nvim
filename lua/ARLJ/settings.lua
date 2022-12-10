
local g = vim.g
local o = vim.o

o.termguicolors = true
o.relativenumber = true
o.number = true

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
		transparent_background = true,
	})

vim.cmd [[colorscheme catppuccin]]

vim.cmd [[ hi LineNr guibg=none guifg=#f9e2af ]]
