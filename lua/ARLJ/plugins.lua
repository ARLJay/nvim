vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup({
	function(use)

    use('wbthomason/packer.nvim')
--    " Better Syntax Support
    use ('sheerun/vim-polyglot')

--    " Tree-sitter improved highlighting
    use ('nvim-treesitter/nvim-treesitter')

--    " Colour highlighting
    use ('ap/vim-css-color')

--    "Feline
    use({
	    'feline-nvim/feline.nvim', 
	    config = function() require('feline').setup() end,
    })

--    " web devicons
    use ('kyazdani42/nvim-web-devicons')

--    " Autocomplete
    use({ 
	'ms-jpq/coq_nvim',
	run = ':COQdeps',
    	config = function()
		local coq_settings = {}
		coq_settings["auto_start"] = "shut-up"
		coq_settings["display.icons.mode"] = "none"
		vim.g.coq_settings = coq_settings
	end,
    })

--    " Telescope
    use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

--    " Alpha
    use {
    'goolord/alpha-nvim',
    config = [[ require('configs/alpha') ]],
}
end,})

