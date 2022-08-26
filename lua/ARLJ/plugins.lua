return require('packer').startup({
	function(use)
--    " Better Syntax Support
    use ('sheerun.vim-polyglot')

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
    	config = function()
		local coq_settings = {}
		coq_settings["auto_start"] = "shut-up"
		coq_settings["display.icons.mode"] = "none"
		vim.g.coq_settings = coq_settings
	end,
    })

--    " Telescope
    use ('nvim-telescope/telescope.nvim')

--    " Alpha
    use ('goolord/alpha-nvim')
end,})

