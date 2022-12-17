
local g = vim.g
local o = vim.o

o.termguicolors = true
o.relativenumber = true
o.number = true

o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true
