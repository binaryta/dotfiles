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

syntax on

filetype on
filetype plugin on
filetype indent on

" load monokai-phoenix if it's installed
if index(getcompletion('', 'color'), 'monokai-phoenix') >= 0
  colorscheme monokai-phoenix
else
  colorscheme default
endif
