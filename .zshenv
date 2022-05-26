# Environment Variable

export LC_ALL=ja_JP.UTF-8
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export ZDOTDIR=$HOME
export ZHOMEDIR=$ZDOTDIR/.config/zsh

export EDITOR=nvim
export PAGER=bat

export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

export PYTHONPATH="/Library/Frameworks/Python.framework/Versions/3.10/bin"
export BAT_CONFIG_PATH="${XDG_CONFIG_HOME}/bat/bat.config"

path=(
  /usr/local/sbin(N-/)
  $HOME/.cargo/bin(N-/)
  $HOME/.local/bin(N-/)
  $path
)
