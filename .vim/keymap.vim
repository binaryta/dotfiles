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

" --- comment out
nmap ,, <Plug>NERDCommenterToggle

" --- vimfiler
nnoremap <silent> <space>f :VimFilerExplorer -toggle<CR>

" --- tag jump
nnoremap <C-]> g<C-]>

" --- ale
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" --- haya14busa/incsearch.vim
map /  <Plug>(incsearch-forward)
