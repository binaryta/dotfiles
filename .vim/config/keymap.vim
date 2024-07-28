" --- buffer
noremap bls :ls<CR>:buf 
noremap bn  :bnext<CR>
noremap bp  :bprev<CR>
noremap fn  :edit 

" --- tab
noremap tt  :tabnew 
noremap tls :tabs<CR>
noremap tn  :tabnext<CR>
noremap tp  :tabprevious<CR>

" --- split, vsplit
noremap <   <C-w><
noremap >   <C-w>>
noremap +   <C-w>+
noremap -   <C-w>-

" --- tag jump
" nnoremap <C-]> g<C-]>
" map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" map <leader><C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" --- junegunn/fzf.vim
nnoremap <silent> <space>f :Files <CR>

" --- haya14busa/incsearch.vim
map / <Plug>(incsearch-forward)

" --- tomtom/tcomment_vim
map ,, :TComment<CR>

" --- neoclide/coc.nvim
nmap <silent> <space><space> :<C-u>CocList<CR>
nmap <silent> <C-f> <Plug>(coc-format)
nmap <silent> <C-]> <Plug>(coc-definition)
nmap <silent> <C-t> <C-o>
nmap <silent> gr <Plug>(coc-references)
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
