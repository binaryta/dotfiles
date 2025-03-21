runtime! config/*.vim

set number
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set laststatus=2
set statusline=%f
set t_Co=256
set hlsearch
set wildmenu
set backspace=indent,eol,start
set encoding=utf-8
set updatetime=150
set nobackup
set nowritebackup
set signcolumn=yes
set cursorline
set foldenable
set foldmethod=indent
set foldlevelstart=99
set clipboard+=unnamed
set incsearch

syntax on

filetype on
filetype plugin on
filetype indent on

highlight Folded cterm=NONE ctermfg=244 ctermbg=235
