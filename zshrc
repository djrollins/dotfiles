fpath=($HOME/.zsh/func $fpath)
# initialize completion scripts
autoload compinit
compinit

# setup prompt
setopt PROMPT_SUBST
autoload -U promptinit
promptinit
prompt steeef

# fix terminal vim colours
export TERM=xterm-256color

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

function add_gem_path()
{
    if which ruby > /dev/null && which gem > /dev/null; then
        if [ -d "$HOME/.gem/ruby/2.3.0" ]; then
            export PATH=$PATH:"$HOME/.gem/ruby/2.3.0/bin"
        else
            echo "Ruby version in gem path doesn't exist"
        fi
    fi
}

add_gem_path

