ps1='\[\e[1;32m\][\u (\[\e[0;34m\]\W\[\e[1;32m\])]\[\e[0;32m\]$(__git_ps1)\[\e[1;32m\] $ \[\e[0;37m\]'
# aliases
  alias l='ls'
  alias ls='ls -G'
  alias ll='ls -l'
  alias la='ls -a'
  alias ff='find ./ -type f -print | xargs grep --color'
  alias grep='grep --color'
  alias gs='git status'
  alias gtkcc='gcc `pkg-config --cflags gtk+-3.0` `pkg-config --libs gtk+-3.0`'
  alias scs='screen -S'
  alias scr='screen -r'
  alias scls='screen -ls'
  alias scx='screen -x'
  alias python2_server='python -m SimpleHTTPServer'
  alias python3_server='python3 -m http.server'

# custome command
  function f() {
    find $1 -type f | grep -v "node_modules" | grep -v ".next" | xargs grep --color $2
  }

# export environment variables
  source ~/.bash/git-prompt.sh
  source ~/.bash/git-complection.bash

# rbenv
#  export RBENV_ROOT=/usr/local/var/rbenv
#  eval "$(rbenv init -)"

# pyenv
#  export PYENV_ROOT=/usr/local/var/pyenv
#  eval "$(pyenv init -)"

# java
#  export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home/
#  export PATH=/opt/apache-maven-3.3.9/bin:$PATH

# opam
#  eval `opam config env`

# rust
#   export PATH="/usr/local/opt/openssl/bin:$PATH"
#   export LDFLAGS="-L/usr/local/opt/openssl/lib"
#   export CPPFLAGS="-I/usr/local/opt/openssl/include"
#   export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# node
  export PATH=$PATH:~/.nodebrew/current/bin

# deno
  export PATH="/Users/naritatakuya/.deno/bin:$PATH"

# prompt settings
  # screen
  if [ $TERM == 'screen' ]; then
    #export PS1='\[\e[1;32m\]OSX(Sierra):[\[\e[0;34m\]\W\[\e[1;32m\]]\[\e[0;32m\]$(__git_ps1)\[\e[1;32m\] $ \[\e[0;37m\]'
    export PS1='\[\e[1;32m\]$(uname):[\[\e[0;34m\]\W\[\e[1;32m\]]\[\e[0;32m\]$(__git_ps1)\[\e[1;32m\] $ \[\e[0;37m\]'
    export PROMPT_COMMAND='echo -ne "\033k\033\0134\033k$(basename $(pwd))\033\\"'
  # normal
  else
    export PS1=$ps1
  fi
  function share_history {
    history -a
    history -c
    history -r
  }
  PROMPT_COMMAND='share_history'
  shopt -u histappend
