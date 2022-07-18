# oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(rails ruby git)
export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8
source $ZSH/oh-my-zsh.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/naritatakuya/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/naritatakuya/Downloads/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/naritatakuya/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/naritatakuya/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# k8s
source <(kubectl completion zsh)
complete -F __start_kubectl k

# nodenv
eval "$(nodenv init -)"

export COMPOSE_FILE=compose.arm.yml

# aliases
alias k=kubectl
alias gs="git status"
alias grep="grep --color"
alias fgrep='() {find $1 -type f | xargs grep --color $2}'
alias ctags="`brew --prefix`/bin/ctags"

# direnv
eval "$(direnv hook zsh)"
