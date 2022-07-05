typeset -U path
path+="$HOME/bin"
path+="$HOME/bin/wine"
path+="$HOME/.local/bin"
path+="$HOME/.cargo/bin"
path+="$HOME/.cabal/bin"
path+="$HOME/.ghcup/bin"
path+="$HOME/.local/share/gem/ruby/3.0.0/bin"
path+="$HOME/.rvm/bin"
path+="$HOME/go/bin"

typeset -U fpath
fpath+="$HOME/.zsh/completions"

EDITOR=vim

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
