vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup({
	function(use)

    use('wbthomason/packer.nvim')

    use ('ThePrimeagen/vim-be-good')

    use {
      "catppuccin/nvim", as = "catppuccin",
      config = function()
        vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

        require("catppuccin").setup({
        		transparent_background = true,
        	})
        vim.cmd [[colorscheme catppuccin]]
        
        vim.cmd [[ hi LineNr guibg=none guifg=#f9e2af ]]
      end
    }

--    " Better Syntax Support
    use ('sheerun/vim-polyglot')

--    " Tree-sitter improved highlighting
    use ('nvim-treesitter/nvim-treesitter')

--    " Colour highlighting
    use ('ap/vim-css-color')

--    "lualine
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  config = require('lualine').setup{
    options = {theme = 'horizon'}
    }
}

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

  use ({
      'lervag/vimtex',
      config = function()
        vim.g.vimtex_view_method = 'zathura'
      end,
    })

end,})

