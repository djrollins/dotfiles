# include custom functions
fpath=($HOME/.zsh/func $fpath)

# Use emacs keybindings
bindkey -e

# initialize completion scripts
autoload compinit
compinit

# setup prompt
setopt PROMPT_SUBST
autoload -U promptinit
promptinit
prompt djrollins

# tidy up command history
setopt HIST_IGNORE_DUPS
export HISTSIZE=100000
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=$HISTSIZE

# set editor if it's not set
if [[ -z "$EDITOR" ]]; then
	export EDITOR=vim
fi

# C-xe to open readline buffer in $EDITOR
autoload -U edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

# platform-specific options
function _zshrc_linux_setup() {
	alias ls="ls --color=auto"
}

function _zshrc_osx_setup() {
	export TERM=xterm-256color
	alias ls="ls -G"

	# osx/BSD coreutils don't have all the options
	# add gnu versions from brew if they exist
	local gcoreutils="/usr/local/opt/coreutils/libexec/gnubin"
	if [[ -d $gcoreutils ]]; then
		export PATH=$gcoreutils:$PATH
		alias ls="ls --color=auto" # re-alias to gnu ls colour option
	fi
}

if [[ $(uname -s) == "Linux" ]]; then
	_zshrc_linux_setup
elif [[ $(uname -s) == "Darwin" ]]; then
	_zshrc_osx_setup
fi

# unset private functions so they don't show up in the shell
unset -f _zshrc_osx_setup
unset -f _zshrc_linux_setup

