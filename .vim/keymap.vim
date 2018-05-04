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
" --- comment out
nmap ,, <Plug>NERDCommenterToggle
" --- nerdtree
noremap nt :NERDTreeToggle<CR>
