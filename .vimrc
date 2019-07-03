" Blake Seers
" [spacebar] to fold and unfold sections

" Vundle and plugins {{{
set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage vundle
Plugin 'gmarik/Vundle.vim'

" Add plugins here...
" Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
" Bundle 'Valloric/YouCompleteMe'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'nvie/vim-flake8'
" Plugin 'Zenburn'
Plugin 'altercation/vim-colors-solarized'
" Plugin 'scrooloose/nerdtree'
" Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'tpope/vim-fugitive'
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

Plugin 'vim-airline/vim-airline-themes'
:let g:airline_solarized_bg='dark'

" All plugins must be added before these lines
call vundle#end()
filetype plugin indent on
"}}}
" Leader Shortcuts {{{
let mapleader=","
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader><space> :noh<CR>
" }}}
" Colors {{{
syntax enable           " enable syntax processing
set background=dark
colorscheme solarized

let g:solarized_termcolors=256
let python_highlight_all=1
let g:solarized_termtrans=1

" Toggle background colour
call togglebg#map("<F5>")
" }}}
" Misc {{{
set clipboard=unnamed
set modeline
set encoding=utf-8
" }}}
" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set textwidth=79
set fileformat=unix
set autoindent
set backspace=indent,eol,start
" }}}
" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline        " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
" }}}
" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered

" Clever completion with the :find command
set path+=**
" }}}
" Folding {{{
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldlevel=99
set foldenable          " don't fold files by default on open
nnoremap <space> za
" See docstrings for folded code
let g:SimplyFold_docstring_preview=1

" Add newlines with Ctrl-j and Ctrl-k
nnoremap <C-j> o<ESC>k
nnoremap <C-k> O<ESC>j
" }}}
" Automatic brackets {{{
inoremap ( ()<Esc>i
inoremap { {<cr>}<Esc>k$o

" vim:foldmethod=marker:foldlevel=0
