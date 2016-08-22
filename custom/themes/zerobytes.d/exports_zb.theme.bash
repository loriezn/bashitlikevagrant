#!/bin/bash

LC_ALL=en_US.UTF-8

xhost +local:root > /dev/null 2>&1
if [ -z "$DISPLAY" -a "$XDG_VTNR" -eq 1 ]; then
    ssh-agent startx -- -dpi 96
fi

    complete -cf sudo

    shopt -s cdspell
    shopt -s checkwinsize
    shopt -s cmdhist
    shopt -s dotglob
    shopt -s expand_aliases
    shopt -s extglob
    shopt -s histappend
    shopt -s hostcomplete

    export HISTSIZE=5000
    export HISTFILESIZE=${HISTSIZE}
    export HISTCONTROL=ignoreboth
    export JAVA_FONTS=/usr/share/fonts/TTF
    export EDITOR=/bin/nano

BROWSER=/usr/bin/xdg-open && export BROWSER

#  GIT
#-------#
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

#  NVM
#-------#
export NVM_DIR="/home/loki/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# TABTAB
#-------#
[ -f /home/loki/.nvm/versions/node/v5.11.0/lib/node_modules/bower-complete/node_modules/tabtab/.completions/bower.bash ] \
. /home/loki/.nvm/versions/node/v5.11.0/lib/node_modules/bower-complete/node_modules/tabtab/.completions/bower.bashexport PATH="$HOME/.rbenv/bin:$PATH"

#  NVM
#-------#
export PATH="$PATH:$HOME/.rvm/bin"

