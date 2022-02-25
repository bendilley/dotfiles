autoload -Uz compinit
compinit
source <(kubectl completion zsh)

bindkey  "\033OH"   beginning-of-line
bindkey  "\033OF"   end-of-line
