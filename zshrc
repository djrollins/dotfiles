fpath=($HOME/.zsh/func $fpath)
# initialize completion scripts
autoload compinit
compinit

# setup prompt
setopt PROMPT_SUBST
autoload -U promptinit
promptinit
prompt steeef

# colorise ls by default
alias ls="ls -G"
# bsd(osx) colors format
LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
# linux colors format
LS_COLORS="di=1;34:ln=1;36:so=1;31:pi=1;33:ex=1;32:bd=1;34;46:cd=1;34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43"

# tidy up command history
setopt HIST_IGNORE_DUPS
export HISTSIZE=100000
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=$HISTSIZE

autoload -U edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

if [[ $(uname -s) == "Darwin" ]]; then
    alias vim="mvim -v"
fi
