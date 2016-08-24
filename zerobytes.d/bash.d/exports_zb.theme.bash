#!/bin/bash

LC_ALL=en_US.UTF-8
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
