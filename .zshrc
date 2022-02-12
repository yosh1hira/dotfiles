#!/bin/zsh

export STARSHIP_CONFIG=$XDG_CONFIG_HOME/starship/config.toml

eval "$(/usr/local/bin/starship init zsh)"
eval "$(/usr/local/bin/zoxide init zsh)"
eval "$(/usr/libexec/path_helper)"

#### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f" || \
        print -P "%F{160}▓▒░ The clone has failed.%f"
fi
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
#### End of Zinit installer's chunk

SCRIPT_DIR=$XDG_CONFIG_HOME/zsh
source $SCRIPT_DIR/plugins.zsh
source $SCRIPT_DIR/config.zsh
source $SCRIPT_DIR/aliases.zsh
source $SCRIPT_DIR/functions.zsh
