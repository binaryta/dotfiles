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

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# direnv
eval "$(direnv hook zsh)"

# pnpm
export PNPM_HOME="/Users/naritatakuya/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

# aliases
alias k=kubectl
alias gs="git status"
alias grep="grep --color"
alias fgrep='() {find $1 -type f | xargs grep --color $2}'
alias ctags="`brew --prefix`/bin/ctags"
alias doco="docker compose"

# ---
export COMPOSE_FILE=compose.arm.yml
