#!/bin/bash
alias md5sum="md5"

alias random_password="LC_CTYPE=C tr -dc 'a-zA-Z0-9' < /dev/urandom | fold -w 12 | head -n 1"
