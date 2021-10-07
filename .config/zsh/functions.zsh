autoload -U compinit
compinit
zstyle ':completion::complete:*' use-cache true
zstyle ':completion:*:default' menu select=1

zstyle ':completion:*' insert-tab false
