#!/bin/bash
alias md5sum="md5"

alias random_password="echo 'Use pwgen 14 1 instead'; pwgen 14 1"

alias grep="grep --color"
alias scpresume="rsync --partial --progress"
alias word="open -a '/Applications/Microsoft Word.app'"
alias be="bundle install --quiet && bundle exec"
alias bo="bundle install --quiet && bundle open"
alias bcap="bundle install --quiet && bin/cap"
alias po="subl *.sublime-project"
alias eject="diskutil eject"
alias clipboard-restart="killall pboard"
alias wololo="afplay ~/wololo.mp3"
alias epsql="env \`cat .env | xargs\` psql"
alias git-prune-tracking="git branch -vv --merged | grep ': gone]' | awk '{print \$1}' | xargs git branch -d"
alias pp="git pull --prune && git-prune-tracking"
alias ff="git merge --ff-only"
alias k="kubectl"
