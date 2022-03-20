" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Tree-sitter improved highlighting
    Plug 'nvim-treesitter/nvim-treesitter'
    "Start screen with recents
    Plug 'mhinz/vim-startify'
    " Colour highlighting
    Plug 'ap/vim-css-color'
    "Fugitive git
    Plug 'tpope/vim-fugitive'
    " Fugitive gitlab
    Plug 'shumphrey/fugitive-gitlab.vim'
    let g:fugitive_gitlab_domains = ['https://stgit.dcs.gla.ac.uk/']
    "Feline
    Plug 'feline-nvim/feline.nvim'
    " web devicons
    Plug 'kyazdani42/nvim-web-devicons'
    " Autocomplete
    Plug 'ms-jpq/coq_nvim'
    " Telescope
    Plug 'nvim-telescope/telescope.nvim'
call plug#end()

" Key mappings
inoremap { {}<Left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


" Plug reload mappings
map \p :source ~/.config/nvim/vim-plug/plugins.vim <ENTER>

" Telescope
map \f :Telescope <ENTER>

" Tab mappings
noremap <silent> <c-h> gT
noremap <silent> <c-l> gt

set tgc
lua require('feline').setup()
let g:coq_settings = { 'auto_start': 'shut-up' }
