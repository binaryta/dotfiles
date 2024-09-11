call plug#begin()

" Colorscheme
Plug 'cocopon/iceberg.vim'
Plug 'wojciechkepka/vim-github-dark'
Plug 'tomasiser/vim-code-dark'

" Syntax highlights
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'noprompt/vim-yardoc'
Plug 'jparise/vim-graphql'
Plug 'pantharshit00/vim-prisma'
Plug 'isRuslan/vim-es6'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Integrations
Plug 'github/copilot.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'tomtom/tcomment_vim'
Plug 'Shougo/vimproc.vim'
Plug 'zchee/deoplete-clang'
Plug 'airblade/vim-rooter'
Plug 'itchyny/lightline.vim'
Plug 'tmhedberg/matchit'
Plug 'Shougo/unite.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'thinca/vim-quickrun'
Plug 'vim-test/vim-test'
Plug 'APZelos/blamer.nvim'
Plug 'junkblocker/patchreview-vim'
Plug 'codegram/vim-codereview'
Plug 'bogado/file-line'
call plug#end()

" vim-rooter
let g:rooter_patterns = ['.git/']

" lightline.vim
let g:lightline = {
  \'active': {
    \'right': [
      \['coc']
    \]
  \},
  \'component_function': {
    \'coc': 'coc#status'
  \}
\}

" vim-github-dark
" colorscheme ghdark
" au Colorscheme ghdark hi Visual cterm=NONE ctermbg=237 ctermfg=NONE

" vim-code-dark
let g:codedark_modern=1
let g:codedark_transparent=1
colorscheme codedark

" coc.vim
highlight CocErrorSign ctermfg=15 ctermbg=196
highlight CocWarningSign ctermfg=0 ctermbg=172
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
command! -nargs=0 TsAutofix :CocCommand tsserver.executeAutoFix
command! -nargs=0 CocExplorer :CocCommand explorer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-yaml',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ 'coc-snippets',
  \ 'coc-highlight',
  \ 'coc-git',
  \ 'coc-fzf-preview',
  \ 'coc-solargraph',
  \ 'coc-tsserver',
  \ 'coc-docker',
  \ 'coc-explorer',
  \]
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" vim-gitgutter
highlight GitGutterAdd ctermfg=LightGreen ctermbg=NONE
highlight GitGutterDelete ctermfg=LightRed ctermbg=NONE
let g:gitgutter_sign_allow_clobber = 1
let g:gitgutter_sign_removed = '–'

" fzf
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" blamer.nvim
" let g:blamer_enabled = 1
" let g:blamer_delay = 100
" let g:blamer_date_format = '%Y-%m-%d'
