set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

" powerline
Plugin 'Lokaltog/powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" icone ??which site 
Plugin 'ryanoasis/vim-devicons'

" https://github.com/JamshedVesuna/vim-markdown-preview.git
Plugin 'JamshedVesuna/vim-markdown-preview'

" https://github.com/joshdick/onedark.vim.git
Plugin 'colors/onedark.vim'

" https://github.com/sheerun/vim-polyglot
Plugin 'sheerun/vim-polyglot'

" https://github.com/edkolev/tmuxline.vim
Plugin 'edkolev/tmuxline.vim'

" https://github.com/itchyny/lightline.vim

Plugin 'itchyny/lightline.vim'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99

let g:tmuxline_preset = 'tmux'

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
 highlight BadWhitespace ctermbg=red guibg=darkred


au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set expandtab
    \set autoindent
    \set fileformat=unix

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Open file in new tab with ctrl + t
let NERDTreeMapOpenInTab= '<c-t>'


" ---- vim-airline ----
" require powerline-symbol patched font installed
" install Roboto Mono given in .vim/fonts/
let g:airline_powerline_fonts = 1
" remove empty angle at the end
let g:airline_skip_empty_sections = 1
" set airline theme
"let g:airline_theme='deus'
" extension for tab line
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#clock#format = '%c'



let python_highlight_all=1

set number
set showmatch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc
set visualbell
set noerrorbells

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }



let g:onedark_hide_endofbuffer=0
let g:airline_theme='onedark'


syntax on
colorscheme onedark
set encoding=UTF-8

