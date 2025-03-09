# oh-my-zsh
ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"
plugins=(git gh direnv docker docker-compose asdf)
EDITOR=vim
source $ZSH/oh-my-zsh.sh

# zsh
source $HOME/.zshrc.custom
source $HOME/.zshrc.brewbundle
source $HOME/.zshrc.env

export GPG_TTY=$(tty)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
