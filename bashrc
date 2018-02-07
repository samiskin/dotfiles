echo -en "\033]0; \a"       # Hide Title

alias ag='ag --path-to-ignore ~/.agignore'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

# Colorscheme
export    BLACK='#191919'
export   BBLACK='#404040'
export    WHITE='#ffffff'
export   BWHITE='#ffffff'
export   YELLOW='#faad21'
export  BYELLOW='#fada21'
export      RED='#e55934'
export     BRED='#fa7921'
export  MAGENTA='#c871c8'
export BMAGENTA='#c594c5'
export     BLUE='#00a5ff'
export    BBLUE='#d3d3d3'
export     CYAN='#2ea4a4'
export    BCYAN='#0098cf'
export    GREEN='#23c897'
export   BGREEN='#2aeeb4'
export    BASE0='#191919'
export    BASE1='#1D1D1D'
export    BASE2='#292929'
export    BASE3='#404040'
export    BASE4='#656565'
export    BASE5='#c0c5ce'
export    BASE6='#d3d3d3'
export    BASE7='#d8dee9'


# Connect/create tmux grouped session automatically.
if [ -z "$TMUX" ]; then
    tmux new-session -t main \; set-option destroy-unattached || tmux new-session -s main
fi

