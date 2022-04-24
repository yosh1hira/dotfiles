#!/bin/zsh

export STARSHIP_CONFIG=$XDG_CONFIG_HOME/starship/config.toml

eval "$(/usr/local/bin/starship init zsh)"
eval "$(/usr/local/bin/zoxide init zsh)"
eval "$(/usr/libexec/path_helper)"

#### Added by Zinit's installer
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "$ZINIT_HOME/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
#### End of Zinit installer's chunk

SCRIPT_DIR=$XDG_CONFIG_HOME/zsh
source $SCRIPT_DIR/plugins.zsh
source $SCRIPT_DIR/config.zsh
source $SCRIPT_DIR/aliases.zsh
source $SCRIPT_DIR/functions.zsh
### End of Zinit's installer chunk
