# oh-my-zsh
ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"
plugins=(git gh direnv docker docker-compose asdf)
source $ZSH/oh-my-zsh.sh

# zsh
source $HOME/.zshrc.custom
source $HOME/.zshrc.brewbundle
source $HOME/.zshrc.env
export GPG_TTY=$(tty)

function load_local_zshrc() {
  local local_rc="$PWD/.zshrc"
  if [[ -f "$local_rc" ]]; then
    source "$local_rc"
  fi
}

autoload -U add-zsh-hook
add-zsh-hook chpwd load_local_zshrc

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
