call plug#begin()

" Syntax highlights
Plug 'posva/vim-vue'
Plug 'tfnico/vim-gradle'
Plug 'arrufat/vala.vim'
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
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_enable_auto_cd = 1
let g:vimfiler_edit_action = 'tabopen'
" Plug 'airblade/vim-rooter'
"   let g:rooter_patterns = ['Rakefile', '.git/']
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
"Plug 'vim-syntastic/syntastic'
"  let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['ruby'] }
"  let g:syntastic_ruby_checkers = ['rubocop']
"  set statusline+=%#warningmsg#
"  set statusline+=%{SyntasticStatuslineFlag()}
"  set statusline+=%*
"  let g:syntastic_always_populate_loc_list = 1
"  let g:syntastic_auto_loc_list = 1
"  let g:syntastic_check_on_open = 1
"  let g:syntastic_check_on_wq = 0
Plug 'jeetsukumaran/vim-buffergator'

" TypeScript
Plug 'Quramy/tsuquyomi'
Plug 'Quramy/tsuquyomi-vue'

" HTML
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'

" JavaScript
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

call plug#end()
