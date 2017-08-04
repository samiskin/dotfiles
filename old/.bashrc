export PS1="\W  > "
export PATH="$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:/Users/samiskin/imgcat.sh"

# Connect/create tmux grouped session automatically.
if [ -z "$TMUX" ]; then
    tmux new-session -t main \; set-option destroy-unattached || tmux new-session -s main
fi

# If not running interactively, do not do anything
#[[ $- != *i* ]] && return
#[[ -z "$TMUX" ]] && exec tmux

#alias run465="rsync -a ~/Documents/SE3A/SE465/project/se465-project samiskin@ecelinux1.uwaterloo.ca:/home/samiskin/; ssh -t samiskin@ecelinux.uwaterloo.ca \"cd ~/se465-project/runner; ./verify.sh;\";"

