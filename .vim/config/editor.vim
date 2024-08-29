augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
        \ exe "normal g`\"" | endif
augroup END

augroup fileTypeIndent
  autocmd!
  autocmd BufRead,BufNewFile *.ts            set filetype=typescript tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufRead,BufNewFile *.gradle        set filetype=java tabstop=2 softtabstop=2 shiftwidth=2
  autocmd BufRead,BufNewFile *.vue           set filetype=vue.html.javascript.css
  autocmd BufRead,BufNewFile *.fxml          set filetype=xml
  autocmd BufRead,BufNewFile *.json.jbuilder set filetype=ruby
  autocmd BufRead,BufNewFile Schemafile      set filetype=ruby
  autocmd BufRead,BufNewFile Brewfile        set filetype=ruby
  autocmd BufRead,BufNewFile *.{mjs}         set filetype=javascript
augroup END

" augroup colorschemeSetting
"   autocmd ColorScheme * highlight Comment ctermfg=239 cterm=BOLD
"   autocmd ColorScheme * highlight LineNr  ctermfg=239
" augroup END

let mapleader = " "
