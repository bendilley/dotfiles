#!/bin/bash
alias md5sum="md5"

alias random_password="LC_CTYPE=C tr -dc 'a-zA-Z0-9' < /dev/urandom | fold -w 12 | head -n 1"

alias grep="grep --color"
alias scpresume="rsync --partial --progress"
alias word="open -a '/Applications/Microsoft Office 2011/Microsoft Word.app'"
alias be="bundle exec"
