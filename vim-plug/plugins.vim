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
    " Rainbow brackets
    Plug 'p00f/nvim-ts-rainbow'
    "Start screen with recents
    Plug 'mhinz/vim-startify'
   " " Ranger dependency
   " Plug 'rbgrouleff/bclose.vim'
    " Ranger
    Plug 'kevinhwang91/rnvimr'
    " Colour highlighting
    Plug 'ap/vim-css-color'
    "Fugitive git
    Plug 'tpope/vim-fugitive'
    " Fugitive gitlab
    Plug 'shumphrey/fugitive-gitlab.vim'
    let g:fugitive_gitlab_domains = ['https://stgit.dcs.gla.ac.uk/']
call plug#end()

" Key mappings
inoremap { {}<Left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Ranger mappings
map <silent> \f :RnvimrToggle <ENTER>

let g:rnvimr_enable_picker = 1

" Tab mappings
noremap <silent> <c-h> gT
noremap <silent> <c-l> gt
