if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/naritatakuya/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/naritatakuya/.vim/dein'
let g:dein#_runtime_path = '/Users/naritatakuya/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/naritatakuya/.vim/dein/.cache/.vimrc'
let &runtimepath = '/Users/naritatakuya/.vim,/Users/naritatakuya/.vim/dein/.cache/.vimrc/.dein,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,/Users/naritatakuya/.vim/after,/Users/naritatakuya/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/naritatakuya/.vim/dein/.cache/.vimrc/.dein/after'
