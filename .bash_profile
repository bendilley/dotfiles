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
