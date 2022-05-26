autoload -U compinit
compinit -d $XDG_CACHE_HOME/zsh/zcompdump

zstyle ':completion::complete:*' use-cache true
zstyle ':completion::complete:*' cache-path "$XDG_CACHE_HOME/zsh/zcompcache"

zstyle ':completion:*:default' menu select=1

zstyle ':completion:*' insert-tab false

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
