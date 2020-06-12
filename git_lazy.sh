#!/bin/bash

alias gpuo="git push origin \`git symbolic-ref --short HEAD\`"
alias gplo="git pull origin \`git symbolic-ref --short HEAD\`"
alias gadd="git add ."
alias gpd="git checkout develop && git pull origin develop"
alias gl="git log"
alias gshlc="git show \`git rev-parse HEAD\`"
alias glcmsg="git --no-pager log -1  --pretty='%s"
alias gdiffdev="git diff develop"
alias gs="git status"
alias gck="git checkout"
alias gckbr="git checkout -b"
alias gf="git diff"

# gcom "hello there!"
gcom() {
    JIRA=`git symbolic-ref --short HEAD| cut -d'/' -f2- | cut -d"-" -f1,2`
    # allows upto 20 words per commit message
    git commit -m "[${JIRA}] $1 $2 $3 $4 $5 $6 $7 $8 $9 $10 $11 $12 $13 $14 $15 $16 $17 $18 $19 $20"
}
