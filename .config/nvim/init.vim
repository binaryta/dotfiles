source ~/.vimrc
for file in split(glob('~/.vim/config/*.vim'), '\n')
  execute 'source ' . file
endfor

set guicursor=n-v-c-i:block

lua require('copilot_chat_config.init')
