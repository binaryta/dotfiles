# oh-my-zsh
ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"
plugins=(git gh direnv docker docker-compose)
source $ZSH/oh-my-zsh.sh

# customize
source $HOME/.zshrc.custom

# private
source $HOME/.zshrc.private

export GPG_TTY=$(tty)

