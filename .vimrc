augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
        \ exe "normal g`\"" | endif
augroup END

" - dein setting
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.vim/dein'))
  call dein#load_toml('~/.vim/dein.toml', {'lazy' : 0})
call dein#end()
call dein#save_state()
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

augroup fileTypeIndent
  autocmd!
  autocmd BufRead,BufNewFile *.ts            set filetype=typescript tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufRead,BufNewFile *.gradle        set filetype=java tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufRead,BufNewFile *.vue           set filetype=vue.html.javascript.css
  autocmd BufRead,BufNewFile *.fxml          set filetype=xml
  autocmd BufRead,BufNewFile *.json.jbuilder set filetype=ruby
augroup END
augroup colorschemeSetting
  autocmd ColorScheme * highlight Comment ctermfg=239 cterm=BOLD
  autocmd ColorScheme * highlight LineNr  ctermfg=239
augroup END

autocmd VimEnter *  execute 'NERDTree' | execute "normal! \<C-w>l"

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

colorscheme landscape
let g:airline_theme='dark'
let mapleader = " "
let g:tsuquyomi_completion_detail = 1

source ~/.vim/keymap.vim
