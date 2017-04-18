if !&compatible
  set nocompatible
endif
augroup MyAutoCmd
  autocmd!
augroup END
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
        \ exe "normal g`\"" | endif
augroup END

"##=== dein setting ===##"
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.vim/dein'))
  call dein#add('zchee/deoplete-clang')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('itchyny/landscape.vim')
  call dein#add('tomasr/molokai')
  call dein#add('mattn/emmet-vim')
call dein#end()
call dein#save_state()
if has('vim_starting') && dein#check_install()
  call dein#install()
endif
"##=== dein setting ===##"

hi Visual cterm=bold
autocmd ColorScheme * highlight Comment ctermfg=239 cterm=BOLD
autocmd ColorScheme * highlight LineNr  ctermfg=239

set number
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set laststatus=2
set t_Co=256
set hlsearch
set showcmd
syntax on

filetype on
filetype plugin on
filetype indent on

colorscheme landscape
let g:airline_theme='dark'

nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>


" unite-tagsの設定
autocmd BufEnter *
\   if empty(&buftype)
\|      nnoremap <buffer> <C-]> :<C-u>UniteWithCursorWord -immediately tag<CR>
\|  endif

" 行末の空白文字をハイライト
augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
  autocmd BufNewFile,BufRead *.{html,htm,vue*} set filetype=html "Vue.jsのSyntaxをHTMLと同じにする
augroup END
