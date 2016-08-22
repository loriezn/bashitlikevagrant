#!/bin/bash
#Github Shortcuts & Functions
gi(){
  # Initalize a fresh online Github Repository.
  if [ -z "$GITREPO" ]; then
    GITUSER=studio2131
    GITREPO="$*"
    touch README.md
    git init
    git add README.md
    git commit -m "first commit"
    git remote add origin git@github.com:"$GITUSER"/"$GITREPO".git
    git push -u origin master
    printf "\r"
    
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
