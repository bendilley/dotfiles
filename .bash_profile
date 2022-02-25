# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi

if [ -f "$HOME/.profile" ]; then
  . "$HOME/.profile"
fi

# this has to happen _after_ paths have been set
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Ensure old rbenv shims don't interfere with chef
if which chef > /dev/null; then PATH="/opt/chefdk/bin:$PATH"; fi

# This fixes a problem with Vagrant startup
# https://github.com/mitchellh/vagrant/issues/2435#issuecomment-139150927
ulimit -n 1024

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# ls colors
export CLICOLOR=1
export LSCOLORS=ExgxdxDxcxegedabagacad

export TERM="xterm-color"

export MAVEN_OPTS="-Xmx512m"
export ANT_OPTS="$MAVEN_OPTS"
export LIQUIBASE_HOME="/usr/local/Cellar/liquibase/3.4.1/libexec"

export EDITOR="vim"
export GEM_EDITOR="subl"

export BASH_SILENCE_DEPRECATION_WARNING=1
