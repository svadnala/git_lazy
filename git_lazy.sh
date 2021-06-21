#!/usr/bin/env bash

# GIT LAZY stuff
alias gpuo="git push origin \`git symbolic-ref --short HEAD\`"
alias gplo="git pull origin \`git symbolic-ref --short HEAD\`"
alias cb="echo \`git symbolic-ref --short HEAD\`"
alias gadd="git add ."
alias and="&&"
alias gpd="git checkout develop && git pull origin develop"
alias gl="git log"
alias gshlc="git show \`git rev-parse HEAD\`"
alias glcmsg="git --no-pager log -1  --pretty='%s"
alias gdiffdev="git diff develop"
alias gs="git status"
alias gck="git checkout"
alias gfo="git fetch origin"
alias gckbr="git checkout -b"
alias gf="git diff"

commit_usual(){
  git commit -m "$1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $16 $17 $18"
}

# gcom "commit_msg_here"
gcom() {
  branch_type=$( git symbolic-ref --short HEAD | cut -d'/' -f1)
  echo "$branch_type"
  if [[ $branch_type == "f" ]]; then
    JIRA=$(git symbolic-ref --short HEAD| cut -d'/' -f2- | cut -d"-" -f1,2)
    # wc is 1 if grep founds one or one match. sed removes any whitespaces and leaves either 1 or 0 result of wc.
    count=$(git symbolic-ref --short HEAD| cut -d'/' -f2- | cut -d"-" -f1,2 | grep -E "^[A-Z]+" | wc -l | sed "s/ //g")
    if [[ $count -eq 1 ]]; then
      # if feature bracnh name is f/CD-1234-blah-name
      git commit -m "[${JIRA}] $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $16 $17 $18"
    else
      # if feature branch name is f/test-blah-name
      commit_usual "$@"
    fi
  else
    commit_usual "$@"
  fi
}
