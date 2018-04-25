augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
        \ exe "normal g`\"" | endif
augroup END

" - dein setting
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.vim/dein'))
  call dein#add('zchee/deoplete-clang')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('mattn/emmet-vim')
  call dein#add('slim-template/vim-slim')
  call dein#add('posva/vim-vue')
  call dein#add('leafgarland/typescript-vim')
  call dein#add('flowtype/vim-flow')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('Galooshi/import-js')
  call dein#add('digitaltoad/vim-pug')
  call dein#add('tfnico/vim-gradle')
  call dein#add('Quramy/tsuquyomi')
  call dein#add('Quramy/tsuquyomi-vue')
  call dein#add('Quramy/vim-js-pretty-template')
  call dein#add('jason0x43/vim-js-indent')
  call dein#add('tell-k/vim-autopep8')
  call dein#add('tpope/vim-rails')
  call dein#add('othree/yajs.vim')
  call dein#add('udalov/kotlin-vim')
  call dein#add('rhysd/vim-wasm')
  call dein#add('scrooloose/nerdtree')
  "call dein#add('Shougo/vimproc.vim')

  " --- color schemes
  call dein#add('tomasr/molokai')
  call dein#add('Reewr/vim-monokai-phoenix')
  call dein#add('eduardoHoefel/matrix.vim')
  call dein#add('itchyny/landscape.vim')
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
  autocmd BufNewFile,BufRead *.json.jbuilder set filetype=ruby
augroup END
augroup colorschemeSetting
  autocmd ColorScheme * highlight Comment ctermfg=239 cterm=BOLD
  autocmd ColorScheme * highlight LineNr  ctermfg=239
  autocmd FileType typescript setlocal completeopt+=menu,preview
augroup END

autocmd BufNewFile,BufRead *.vue set filetype=vue
autocmd VimEnter *  execute 'NERDTree' | execute "normal! \<C-w>l"

" - key map
" --- buffer setting
noremap bls :ls<CR>:buf 
noremap bn  :bnext<CR>
noremap bp  :bprev<CR>
noremap fn  :edit 
" --- tab setting
noremap tt  :tabnew 
noremap tls :tabs<CR>
noremap tn  :tabnext<CR>
noremap tp  :tabprevious<CR>
" --- split, vsplit setting
noremap <   <C-w><
noremap >   <C-w>>
noremap +   <C-w>+
noremap -   <C-w>-
" --- opther
nmap ,, <Plug>NERDCommenterToggle
" --- nerdtree
noremap nt :NERDTreeToggle<CR>

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
