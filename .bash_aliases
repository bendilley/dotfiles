#!/bin/bash
alias md5sum="md5"

alias random_password="LC_CTYPE=C tr -dc 'a-zA-Z0-9' < /dev/urandom | fold -w 14 | head -n 1"

alias grep="grep --color"
alias scpresume="rsync --partial --progress"
alias word="open -a '/Applications/Microsoft Office 2011/Microsoft Word.app'"
alias be="bundle exec"
alias bo="bundle open"
alias po="subl *.sublime-project"
alias eject="diskutil eject"
alias clipboard-restart="killall pboard"
alias wololo="afplay ~/wololo.mp3"
alias epsql="env \`cat .env | xargs\` psql"
alias git-prune-tracking="git branch -vv --merged | grep ': gone]' | awk '{print \$1}' | xargs git branch -d"
alias pp="git pull --prune && git-prune-tracking"
