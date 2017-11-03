set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" configure tabwidth and insert spaces instead of tabs
set expandtab
set tabstop=2        " tab width is 4 spaces
set shiftwidth=2     " indent also with 4 spaces
set softtabstop=2
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

"Flagging Unnecessary Whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

" turn syntax highlighting on
let python_highlight_all=1
syntax on

" turn line numbers on
set number
" highlight matching braces
set showmatch
set hlsearch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

"folding settings
set foldmethod=syntax   "fold based on syntax
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=9     
set foldcolumn=5      "the number of columns to use for folding display at the left
" Enable folding with the spacebar
nnoremap <space> za

filetype plugin on

set pastetoggle=<F10>
set autoindent
set smartindent

"enable mouse
"set mouse=a
"Use the 16 colors terminal option to get VIM to look like GVIM with solarized colors
"set t_Co=16
"set t_Co=256
let g:solarized_termcolors=256
set background=dark
":PluginInstall
Plugin 'tmhedberg/SimpylFold'
"http://valloric.github.io/YouCompleteMe/#ubuntu-linux-x64
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
set clipboard=unnamed
