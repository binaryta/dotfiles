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

augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
        \ exe "normal g`\"" | endif
augroup END

call plug#begin()
" Syntax highlights
Plug 'posva/vim-vue'
Plug 'tfnico/vim-gradle'
Plug 'arrufat/vala.vim'
Plug 'rust-lang/rust.vim'
Plug 'leafgarland/typescript-vim'
Plug 'cespare/vim-toml'
Plug 'noprompt/vim-yardoc'

" Color schames
Plug 'itchyny/landscape.vim'
Plug 'tomasr/molokai'
Plug 'Reewr/vim-monokai-phoenix'

" Integrations
Plug 'haya14busa/incsearch.vim'
Plug 'tomtom/tcomment_vim'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/vimproc.vim'
Plug 'zchee/deoplete-clang'
Plug 'Shougo/vimfiler.vim'
  let g:vimfiler_safe_mode_by_default = 0
  let g:vimfiler_enable_auto_cd = 1
  let g:vimfiler_edit_action = 'tabopen'
Plug 'airblade/vim-rooter'
  let g:rooter_patterns = ['Rakefile', '.git/']
Plug 'vim-airline/vim-airline'
  let g:airline_theme='dark'
Plug 'vim-airline/vim-airline-themes'
Plug 'tmhedberg/matchit'
Plug 'Shougo/unite.vim'
Plug 'w0rp/ale'
  let g:ale_sign_error = "E"
  let g:ale_sign_warning = "W"
  let g:ale_linters = {
        \ 'ruby': ['rubocop'],
        \}
  let g:ale_linters_explicit = 1 
  let g:airline#extensions#ale#enabled = 1
Plug 'scrooloose/syntastic'

" TypeScript
Plug 'Quramy/tsuquyomi'
Plug 'Quramy/tsuquyomi-vue'

call plug#end()

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

let mapleader = " "
colorscheme landscape
source ~/.vim/keymap.vim
