# rust製コマンド
alias cat='bat'
alias cheat='tldr'
alias sed='sd'
alias ps='procs'
alias ping='gping'
alias tree='exa -T --icons'
alias diff='difft'

alias man='env LANG=ja_JP.UTF-8 man'
alias eman='env LANG=C man'

alias eog='open -a Preview'

alias py='python3'
alias pip='pip3'

alias dotfiles='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

typeset -A abbreviations
abbreviations=(
	"bre" "brew update && brew upgrade && brew cleanup --prune=all"
	"la" "exa -bghlSa --icons --git"
)

magic-abbrev-expand() {
	local MATCH
	LBUFFER=${LBUFFER%%(#m)[-_a-zA-Z0-9]#}
	LBUFFER+=${abbreviations[$MATCH]:-$MATCH}
	zle self-insert
}

no-magic-abbrev-expand() {
	LBUFFER+=' '
}

zle -N magic-abbrev-expand
zle -N no-magic-abbrev-expand
bindkey " " magic-abbrev-expand
bindkey "^x " no-magic-abbrev-expand

function extract() {
	case $1 in
		*.tar.gz|*.tgz) tar xzvf $1 ;;
		*.tar.xz) tar Jxvf $1 ;;
		*.zip) unzip $1 ;;
		*.lzh) lha e $1 ;;
		*.tar.bz2|*.tbz) tar xjvf $1 ;;
		*.tar.Z) tar zxvf $1 ;;
		*.gz) gzip -dc $1 ;;
		*.bz2) bzip2 -dc $1 ;;
		*.Z) uncompress $1 ;;
		*.tar) tar xvf $1 ;;
		*.arj) unarj $1 ;;
	esac
}
alias -s {gz,tgz,zip,lzh,bz2,tbz,Z,tar,arj,xz}=extract
function image() {
  kitty +kitten icat $1
}
alias -s {BMP,bmp,GIF,gif,JPG,jpg,PNG,png}=image
alias -s txt=bat
alias -s mp4=mpv
