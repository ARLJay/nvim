local function map(m, k, v)
	vim.keymap.set(m, k, v, {silent = true})
end

map('n', '\\p', ':source ~/.config/nvim/lua/init.lua <ENTER>')
map('n', '<C-h>', 'gT')
map('n', '<C-l>', 'gt')
map('n', '\\f', ':Telescope')
