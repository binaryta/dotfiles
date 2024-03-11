# oh-my-zsh
ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"
plugins=(git gh direnv docker docker-compose)
source $ZSH/oh-my-zsh.sh

# customize
source $HOME/.zshrc.custom

# environment variables
source $HOME/.zshrc.env

export GPG_TTY=$(tty)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
