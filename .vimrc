set number
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set laststatus=2
set t_Co=256
set hlsearch
set wildmenu
syntax on
filetype on
filetype plugin on
filetype indent on

augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
        \ exe "normal g`\"" | endif
augroup END

"##=== dein setting ===##"
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.vim/dein'))
  call dein#add('Shougo/vimproc.vim')
  call dein#add('zchee/deoplete-clang')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('mattn/emmet-vim')
  call dein#add('slim-template/vim-slim')
  call dein#add('posva/vim-vue')
  call dein#add('leafgarland/typescript-vim')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('Galooshi/import-js')
  call dein#add('Quramy/tsuquyomi')
  call dein#add('Quramy/tsuquyomi-vue')
  call dein#add('Quramy/vim-js-pretty-template')
  call dein#add('jason0x43/vim-js-indent')
  call dein#add('tpope/vim-rails')

  "== color schemes =="
  call dein#add('tomasr/molokai')
  call dein#add('Reewr/vim-monokai-phoenix')
  call dein#add('eduardoHoefel/matrix.vim')
  call dein#add('itchyny/landscape.vim')
call dein#end()
call dein#save_state()
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

hi Visual cterm=bold
autocmd ColorScheme * highlight Comment ctermfg=239 cterm=BOLD
autocmd ColorScheme * highlight LineNr  ctermfg=239
"autocmd FileType typescript setlocal completeopt+=menu,preview
colorscheme landscape
let g:airline_theme='dark'
let mapleader = " "
let g:tsuquyomi_completion_detail = 1
augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.ts setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufRead,BufNewFile *.ts set filetype=typescript
  autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
  au BufNewFile,BufRead *.json.jbuilder set ft=ruby
  au BufNewFile,BufRead *.text set ft=ruby
augroup END
autocmd BufNewFile,BufRead *.vue set filetype=vue
nmap ,, <Plug>NERDCommenterToggle
vmap ,, <Plug>NERDCommenterToggle
set backspace=indent,eol,start

"if !&compatible
"  set nocompatible
"endif
"augroup MyAutoCmd
"  autocmd!
"augroup END
"augroup vimrcEx
"  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
"        \ exe "normal g`\"" | endif
"augroup END
"
""##=== dein setting ===##"
"set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
"call dein#begin(expand('~/.vim/dein'))
"  call dein#add('zchee/deoplete-clang')
"  call dein#add('vim-airline/vim-airline')
"  call dein#add('vim-airline/vim-airline-themes')
"  call dein#add('itchyny/lightline.vim')
"  call dein#add('mattn/emmet-vim')
"  call dein#add('sjl/badwolf')
"  call dein#add('tpope/vim-endwise')
"  call dein#add('leafgarland/typescript-vim')
"  call dein#add('tpope/vim-surround')
"  " colorscheme
"  call dein#add('tomasr/molokai')
"  call dein#add('itchyny/landscape.vim')
"call dein#end()
"call dein#save_state()
"if has('vim_starting') && dein#check_install()
"  call dein#install()
"endif
"
"imap { {}<LEFT>
"imap [ []<LEFT>
"imap ( ()<LEFT>
"
""##=== dein setting ===##"
"hi Visual cterm=bold
"autocmd ColorScheme * highlight Comment ctermfg=239 cterm=BOLD
"autocmd ColorScheme * highlight LineNr  ctermfg=239
"set number
"set expandtab
"set tabstop=2
"set softtabstop=2
"set shiftwidth=2
"set laststatus=2
"set t_Co=256
"set hlsearch
"set showcmd
"set showmatch
"syntax on
"
"filetype on
"filetype plugin on
"filetype indent on
"
"colorscheme landscape
"let g:airline_theme='dark'
"
"nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
"nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>
"
"
"" unite-tagsの設定
"autocmd BufEnter *
"\   if empty(&buftype)
"\|      nnoremap <buffer> <C-]> :<C-u>UniteWithCursorWord -immediately tag<CR>
"\|  endif
"
"" 行末の空白文字をハイライト
"augroup HighlightTrailingSpaces
"  autocmd!
"  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
"  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
"  autocmd BufNewFile,BufRead *.{html,htm,vue*} set filetype=html "Vue.jsのSyntaxをHTMLと同じにする
"augroup END
"
"autocmd BufWritePre * :%s/\s\+$//ge
