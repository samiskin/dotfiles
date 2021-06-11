echo -en "\033]0; \a"       # Hide Title

alias ag='ag --path-to-ignore ~/.agignore'
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export RUST_SRC_PATH="/Users/smiskin/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src"

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi


export NPM_TOKEN=923e0797-2c4f-45ed-b164-2833582ceda5

# Neovim's python3 sometimes errors with "Fatal Python error: config_get_locale_encoding"
export LANG="en_US.UTF-8"

# Colorscheme
export    BLACK='#101010'
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

export DISABLE_AUTO_TITLE='true'

export GITHUB_TOKEN='db0ed065275881e79694f62218486a639090596d'
# export AWS_ACCESS_KEY_ID='AKIAJC6XFHB5UYQTR3BA'
# export AWS_SECRET_ACCESS_KEY='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'
export PACKAGECLOUD_TOKEN='c2a4166ece45e2252b880ea012b530aadb64e43d10e54924'
# export PACKAGECLOUD_TOKEN='f08c055cba2c7b70800fb436f3b8931142f7a0799913fe4f'

export AWS_ACCESS_KEY_ID='AKIAJC6XFHB5UYQTR3BA' # Travis
export AWS_SECRET_ACCESS_KEY='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'
export SLACK_WEBAPP_REPO='/Users/smiskin/webapp'


# Connect/create tmux grouped session automatically.
if [ -z "$TMUX" ]; then
    tmux new-session -t main \; set-option destroy-unattached || tmux new-session -s main
fi


# [ -f ~/.fzf.bash ] && source ~/.fzf.bash
# source ~/.bash_profile

alias grc='git rebase --continue'
alias gca='git commit --amend'
alias ga='git add .'
alias gdc='git diff --cached'
alias gd='git diff'
alias gs='git status'
alias gc='git checkout'
alias gl='git log'
alias gpf='git push --force'
alias gb='git branch --sort=-committerdate | head -n 7'

alias eb='~/electron/script/bootstrap.py -d -v'
alias ebd='~/electron/script/build.py -c D'
alias ebr='~/electron/script/build.py -c R'
alias ebbd='eb && ebd'
alias ebbr='eb && ebr'

# electron run stuff
alias erun='~/electron/out/D/Electron.app/Contents/MacOS/Electron'
alias ebrun='ebd && erun'
alias et='ebd && npm test -- --ci'
alias nuke='npm run clean && ebbd'

# electron debug stuff
alias debug-spec='lldb -- out/D/Electron.app spec'
alias debug='lldb ~/electron/out/D/Electron.app'

# Codi
# Usage: codi [filetype] [filename]
codi() {
  local syntax="${1:-javascript}"
  shift
  vim -c \
    "let g:startify_disable_at_vimenter = 1 |\
    set bt=nofile ls=0 noru nonu nornu |\
    hi ColorColumn ctermbg=NONE |\
    hi VertSplit ctermbg=NONE |\
    hi NonText ctermfg=0 |\
    Codi $syntax" "$@"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
