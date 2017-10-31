" configure tabwidth and insert spaces instead of tabs
set expandtab
set tabstop=2        " tab width is 2 spaces
set shiftwidth=2     " indent also with 2 spaces

" turn syntax highlighting on
syntax on

" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

"folding settings
set foldmethod=syntax   "fold based on syntax
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=3     
set foldcolumn=5      "the number of columns to use for folding display at the left

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
colorscheme solarized
