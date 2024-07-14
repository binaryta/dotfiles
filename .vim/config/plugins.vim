call plug#begin()

" Syntax highlights
Plug 'rust-lang/rust.vim'
Plug 'leafgarland/typescript-vim'
Plug 'cespare/vim-toml'
Plug 'noprompt/vim-yardoc'
Plug 'jparise/vim-graphql'
Plug 'pantharshit00/vim-prisma'
Plug 'isRuslan/vim-es6'

" Color schames
Plug 'Reewr/vim-monokai-phoenix'

" Integrations
Plug 'github/copilot.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'tomtom/tcomment_vim'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/vimproc.vim'
Plug 'zchee/deoplete-clang'
Plug 'Shougo/vimfiler.vim'
Plug 'airblade/vim-rooter'
Plug 'itchyny/lightline.vim'
Plug 'tmhedberg/matchit'
Plug 'Shougo/unite.vim'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

set encoding=utf-8
set updatetime=150

" vimfiler.vim
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_enable_auto_cd = 1
let g:vimfiler_edit_action = 'tabopen'
let g:vimfiler_ignore_pattern = ['^\.git$', '^\.DS_Store$', 'node_modules']

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
set nobackup
set nowritebackup
set signcolumn=yes
highlight CocErrorSign ctermfg=15 ctermbg=196
highlight CocWarningSign ctermfg=0 ctermbg=172
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
