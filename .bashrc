export PS1="\W  > "
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux
