call plug#begin()

" Syntax highlights
Plug 'rust-lang/rust.vim'
Plug 'leafgarland/typescript-vim'
Plug 'cespare/vim-toml'
Plug 'noprompt/vim-yardoc'
Plug 'jparise/vim-graphql'
Plug 'pantharshit00/vim-prisma'
Plug 'isRuslan/vim-es6'

" Integrations
Plug 'github/copilot.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'tomtom/tcomment_vim'
Plug 'Shougo/neocomplete.vim'
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

" coc.vim
highlight CocErrorSign ctermfg=15 ctermbg=196
highlight CocWarningSign ctermfg=0 ctermbg=172
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument

" vim-gitgutter
highlight GitGutterAdd ctermfg=LightGreen ctermbg=NONE
highlight GitGutterDeelte ctermfg=LightRed ctermbg=NONE
let g:gitgutter_sign_allow_clobber = 1
let g:gitgutter_sign_removed = '-'
