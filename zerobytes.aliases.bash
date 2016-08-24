#!/usr/bin/env bash

cite 'about-alias'
about-alias 'zerobytes abbreviations'

# Shortcuts
alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias ll='ls -lh --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias la='ls -lah --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
alias grep='grep --color=tty -d skip'
alias cp="cp -avi"                          # confirm before overwriting something
alias df='sudo df -h'                          # human-readable sizes
alias du='sudo du -hs'
alias l='clear' 
alias x='exit' 
alias q='exit' 
alias i='sudo -i'

# apt-get
alias update='sudo apt-get update' 
alias upgrade='sudo apt-get upgrade -y' 
alias dist-upgrade='sudo apt-get dist-upgrade -y' 
alias install='sudo apt-get install -y' 
alias install-ee='wget -qO ee rt.cx/ee && sudo bash ee' 
alias ee='sudo ee' 
alias remove='sudo apt-get remove --purge -y' 
alias clean='sudo apt-get autoclean -y && sudo apt-get autoremove -y' 
alias search='apt-cache search' 
alias refresh='xrandr --output eDP1 --mode 2048x1152 --auto'

# sublime
alias xapt='sudo sublime /etc/apt/sources.list' 
alias xaliases='sublime ~/.build-scripts/dotfiles/.bash.d/bash_aliases && echo "reloading bash" && source ~/.bashrc' 
alias xnano='sudo sublime /etc/nanorc' 
alias xnet='sudo sublime /etc/network/interfaces' 
alias xtime='sudo sublime /etc/ntp.conf' 
alias xee='sudo sublime /etc/ee/ee.conf' 
alias xtables='sudo sublime /etc/iptables.conf' 
alias xcheck='shellcheck ~/.bash.d/bash_aliases'
alias xfunctions='sudo sublime /var/www/affinityskin.com.au/htdocs/wp-content/themes/x-child/functions.php' 
alias xgrub='sudo sublime /etc/default/grub && sudo update-grub' 
alias xbash="source ~/.bashrc" 
alias xrc="sublime ~/.bashrc && source ~/.bashrc" 
alias xhosts="sudo sublime /etc/hosts"

#Github Shortcuts & Functions
gi(){
  # Initalize a fresh online Github Repository.
  if [ -z "$GITREPO" ]; then
    echo "Great Scott! You forgot to tell me the repo's name."
  else
    GITUSER=studio2131
    GITREPO="$*"
    touch README.md
    git init
    git add README.md
    git commit -m "first commit"
    git remote add origin git@github.com:"$GITUSER"/"$GITREPO".git
    git push -u origin master
    printf "\r"
    echo "Great Scott!! Things have certainly   changed around here"
  fi
}
alias gs='git status'
ga(){
  # Add all files to Git VCS que unless specifically stated.
  fileArray=( "$@" )
  if [ -z "$FILEADD" ]; then
    echo "all changes added to que"
    git add ./*
  else
    echo "added ${#fileArray[@]}; to que"
    git add "${fileArray[@]}";
  fi
  printf "\r"
  echo "Great Scott!! This made new changes in your timeline."
  gs
}
gd(){
  # Remove flagged changes from Git
  git checkout -- "$@"
}
gm(){
  # Commit added changged to current working directory branch.
  # Use default error debuuging message for commit description unless otherwise stated.
  MSG="Commited changes ready to push"
  FILEMODS="$*"
  if [ -z "$FILEMODS" ]; then
    git commit -m "Error debugged \& fixed"
    echo "$MSG"
  else
    git commit -m "$FILEMODS"
    echo "$MSG"
  fi
  printf "\r"
  echo "Great Scott!! We've just passed 80km/h!"
}
gp(){
  # Push commited local branch to Github repository's master branch unless otherwise stated.
  REPO="$1"
  if [ -z "$REPO" ]; then
    echo "Commiting changes to master"
    git push origin master
  else
    echo "Commiting changes to $REPO"
    git push origin "$REPO"
  fi
  printf "\n"
  printf "$RESET" "%s" "$ALT_PURPLE Great Scott!! Thw flux capacitor is now updated"
}
# commands
alias visudo='sudo visudo' 
alias service='sudo service' 
alias ufw='sudo ufw' 
alias shutdown='sudo shutdown now' 
alias reboot='sudo reboot' 
alias nginx='sudo nginx' 
alias mv='sudo mv' 
alias rm='sudo rm -rf' 
alias chown='sudo chown -R loki:loki' 
alias chownr='sudo chown -R root:root' 
alias chmod='sudo chmod -R' 
alias wpscan='sudo ruby ~/wpscan/wpscan.rb' 
alias ifconfig='sudo ifconfig' 
alias cat='sudo cat' 
alias c='sudo cat' 
alias tail='sudo tail' 
alias cls='clear' 
alias mount='sudo mount' 
alias umount='sudo umount' 
alias chroot='sudo chroot' 
alias ln='sudo ln -s' 
alias unzip='sudo unzip' 
alias gparted='sudo gparted'

# locations
alias www='cd /var/www' 
alias log='cd /var/log' 
alias xnginx='cd /etc/nginx' 
alias ntest='nginx -t' 
alias nreload='sudo service nginx reload' 
alias nstop='sudo service nginx stop' 
alias nsstart='sudo service nginx start'

# ssh
alias sshd='sudo sublime /etc/ssh/sshd_config && echo "restarting sshd" && sleep 2 && sudo service ssh restart' 
alias xkeys='sublime ~/.ssh/authorize`d_keys' 
alias sshcat='cat ~/.ssh/id_rsa.pub'
alias ipwan='curl ifconfig.me/ip' 
alias alpha='TERM=xterm ssh -X -p 160 loki@ts.loginto.me' 
alias epsilon='TERM=xterm ssh -X -p 200 loki@ts.loginto.me' 
alias omega='TERM=xterm ssh -p 250 root@ts.loginto.me' 
alias cerberus='TERM=xterm ssh loriezn@cerberus.seedboxes.cc'
alias mediahubzn='TERM=xterm ssh -X -p 150 loki@ts.loginto.me' 
alias psi='TERM=xterm ssh loki@192.168.0.10' 
alias epsilon='TERM=xterm ssh -X loki@192.168.0.150'

#!/bin/bash

# Shortcuts
alias ll='ls -lh' 
alias la='ls -lhA' 
alias l='clear' 
alias x='exit' 
alias q='exit' 
alias i='sudo -i'

# apt-get
alias update='sudo apt-get update' 
alias upgrade='sudo apt-get upgrade -y' 
alias dist-upgrade='sudo apt-get dist-upgrade -y' 
alias install='sudo apt-get install -y' 
alias install-ee='wget -qO ee rt.cx/ee && sudo bash ee' 
alias ee='sudo ee' 
alias remove='sudo apt-get remove --purge -y' 
alias clean='sudo apt-get autoclean -y && sudo apt-get autoremove -y' 
alias search='apt-cache search' 
alias refresh='xrandr --output eDP1 --mode 2048x1152 --auto'

# sublime
alias xapt='sudo sublime /etc/apt/sources.list' 
alias xaliases='sublime ~/.build-scripts/dotfiles/.bash.d/bash_aliases && echo "reloading bash" && source ~/.bashrc' 
alias xnano='sudo sublime /etc/nanorc' 
alias xnet='sudo sublime /etc/network/interfaces' 
alias xtime='sudo sublime /etc/ntp.conf' 
alias xee='sudo sublime /etc/ee/ee.conf' 
alias xtables='sudo sublime /etc/iptables.conf' 
alias xcheck='shellcheck ~/.bash.d/bash_aliases'
alias xfunctions='sudo sublime /var/www/affinityskin.com.au/htdocs/wp-content/themes/x-child/functions.php' 
alias xgrub='sudo sublime /etc/default/grub && sudo update-grub' 
alias xbash="source ~/.bashrc" 
alias xrc="sublime ~/.bashrc && source ~/.bashrc" 
alias xhosts="sudo sublime /etc/hosts"

#Github Shortcuts & Functions
gi(){
  # Initalize a fresh online Github Repository.
  if [ -z "$GITREPO" ]; then
    echo "Great Scott! You forgot to tell me the repo's name."
  else
    GITUSER=studio2131
    GITREPO="$*"
    touch README.md
    git init
    git add README.md
    git commit -m "first commit"
    git remote add origin git@github.com:"$GITUSER"/"$GITREPO".git
    git push -u origin master
    printf "\r"
    echo "Great Scott!! Things have certainly   changed around here"
  fi
}
alias gs='git status'
ga(){
  # Add all files to Git VCS que unless specifically stated.
  fileArray=( "$@" )
  if [ -z "$FILEADD" ]; then
    echo "all changes added to que"
    git add ./*
  else
    echo "added ${#fileArray[@]}; to que"
    git add "${fileArray[@]}";
  fi
  printf "\r"
  echo "Great Scott!! This made new changes in your timeline."
  gs
}
gd(){
  # Remove flagged changes from Git
  git checkout -- "$@"
}
gm(){
  # Commit added changged to current working directory branch.
  # Use default error debuuging message for commit description unless otherwise stated.
  MSG="Commited changes ready to push"
  FILEMODS="$*"
  if [ -z "$FILEMODS" ]; then
    git commit -m "Error debugged \& fixed"
    echo "$MSG"
  else
    git commit -m "$FILEMODS"
    echo "$MSG"
  fi
  printf "\r"
  echo "Great Scott!! We've just passed 80km/h!"
}
gp(){
  # Push commited local branch to Github repository's master branch unless otherwise stated.
  REPO="$1"
  if [ -z "$REPO" ]; then
    echo "Commiting changes to master"
    git push origin master
  else
    echo "Commiting changes to $REPO"
    git push origin "$REPO"
  fi
  printf "\n"
  printf "$RESET" "%s" "$ALT_PURPLE Great Scott!! Thw flux capacitor is now updated"
}
# commands
alias visudo='sudo visudo' 
alias service='sudo service' 
alias ufw='sudo ufw' 
alias shutdown='sudo shutdown now' 
alias reboot='sudo reboot' 
alias nginx='sudo nginx' 
alias cp='sudo cp -av' 
alias mv='sudo mv' 
alias rm='sudo rm -rf' 
alias chown='sudo chown -R loki:loki' 
alias chownr='sudo chown -R root:root' 
alias chmod='sudo chmod -R' 
alias wpscan='sudo ruby ~/wpscan/wpscan.rb' 
alias ifconfig='sudo ifconfig' 
alias cat='sudo cat' 
alias c='sudo cat' 
alias tail='sudo tail' 
alias cls='clear' 
alias mount='sudo mount' 
alias umount='sudo umount' 
alias chroot='sudo chroot' 
alias ln='sudo ln -s' 
alias unzip='sudo unzip' 
alias gparted='sudo gparted'

# locations
alias www='cd /var/www' 
alias log='cd /var/log' 
alias xnginx='cd /etc/nginx' 
alias ntest='nginx -t' 
alias nreload='sudo service nginx reload' 
alias nstop='sudo service nginx stop' 
alias nsstart='sudo service nginx start'

# ssh
alias sshd='sudo sublime /etc/ssh/sshd_config && echo "restarting sshd" && sleep 2 && sudo service ssh restart' 
alias xkeys='sublime ~/.ssh/authorize`d_keys' 
alias sshcat='cat ~/.ssh/id_rsa.pub'
alias ipwan='curl ifconfig.me/ip' 
alias alpha='TERM=xterm ssh -X -p 160 loki@ts.loginto.me' 
alias epsilon='TERM=xterm ssh -X -p 200 loki@ts.loginto.me' 
alias omega='TERM=xterm ssh -p 250 root@ts.loginto.me' 
alias cerberus='TERM=xterm ssh loriezn@cerberus.seedboxes.cc'
alias mediahubzn='TERM=xterm ssh -X -p 150 loki@ts.loginto.me' 
alias psi='TERM=xterm ssh loki@192.168.0.10' 
alias epsilon='TERM=xterm ssh -X loki@192.168.0.150'
