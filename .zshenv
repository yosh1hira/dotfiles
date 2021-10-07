# Environment Variable

export LC_ALL=ja_JP.UTF-8
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export ZDOTDIR=$HOME
export ZHOMEDIR=$ZDOTDIR/.config/zsh

path=(
  /usr/local/sbin(N-/)
  $HOME/.cargo/bin(N-/)
  $path
)
