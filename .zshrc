# oh-my-zsh
ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"
plugins=(git gh dotenv direnv docker docker-compose)
source $ZSH/oh-my-zsh.sh

# customize
source $HOME/.zshrc.custom
