local function map(m, k, v)
	vim.keymap.set(m, k, v, {silent = true})
end

map('n', '\\p', ':source ~/.config/nvim/init.lua <ENTER>')
map('n', '<C-h>', 'gT')
map('n', '<C-l>', 'gt')
map('n', '\\f', ':Telescope oldfiles <ENTER>')

map('n', '<Left>', '<Nop>')
map('n', '<Up>', '<Nop>')
map('n', '<Down>', '<Nop>')
map('n', '<Right>', '<Nop>')


map('i', '<Left>', '<Nop>')
map('i', '<Up>', '<Nop>')
map('i', '<Down>', '<Nop>')
map('i', '<Right>', '<Nop>')
map('i', '`', '<Nop>')
--	Terminal mode mapping
  map('t', '<ESC>', '<C-\\><C-n>')
	map('t', '<C-e>', '<ESC>')
