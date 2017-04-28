source ~/.bashrc
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh  # This loads NVM



export PATH="$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:/Users/samiskin/imgcat.sh"
export PKG_CONFIG_PATH=/usr/X11/lib/pkgconfig
alias run465="rsync -a ~/Documents/SE3A/SE465/project/se465-project/pi/partA/ samiskin@ecelinux1.uwaterloo.ca:/home/samiskin/proj-skeleton; ssh -t samiskin@ecelinux1.uwaterloo.ca \"cd ~/proj-skeleton; export JAVA_TOOL_OPTIONS='-Xmx128m'; ./verify.sh;\";"
alias update465="rsync -a samiskin@ecelinux.uwaterloo.ca:/home/samiskin/se465-project ~/Documents/SE3A/SE465/project/"

alias newTex="cp ~/Documents/template.tex ./new.tex; cp ~/Documents/algo.sty ./algo.sty;"

alias runJUnit=jUnit
jUnit() {
  javac -cp .:/Users/samiskin/Documents/SE3A/SE465/junit-4.12.jar:/Users/samiskin/Documents/SE3A/SE465/hamcrest-core-1.3.jar:/Users/samiskin/Documents/SE3A/SE465/asm-all-4.0.jar:.org.junit.runner.JUnitCore $1.java
  java -cp .:/Users/samiskin/Documents/SE3A/SE465/junit-4.12.jar:/Users/samiskin/Documents/SE3A/SE465/hamcrest-core-1.3.jar:/Users/samiskin/Documents/SE3A/SE465/asm-all-4.0.jar org.junit.runner.JUnitCore $1
}
jUnit2() {
  javac -cp /Users/samiskin/Documents/SE3A/SE465/junit-4.12.jar:.org.junit.runner.JUnitCore $1.java
  java -cp .:/Users/samiskin/Documents/SE3A/SE465/junit-4.12.jar:/Users/samiskin/Documents/SE3A/SE465/hamcrest-core-1.3.jar:/Users/samiskin/Documents/SE3A/SE465/asm-all-4.0.jar org.junit.runner.JUnitCore $1
}
watchTex() {
  latexmk -pdf -pvc $1
  latexmk -c
}
buildTex() {
  latexmk -pdf $1
  latexmk -c
}
alias runTex=watchTex
alias openTex=buildTex
alias uwssh="ssh -Y samiskin@linux.student.cs.uwaterloo.ca"
alias ecessh="ssh -Y samiskin@ecelinux1.uwaterloo.ca"
alias cpmake="make; rm -r build; cp ./bin/release/* ./; rm -r bin;"


alias cs341="cd ~/Documents/SE3A/CS341;"
alias se465="cd ~/Documents/SE3A/SE465;"
alias cs349="cd ~/Documents/SE3A/CS349;"
alias clas104="cd ~/Documents/SE3A/CLAS104;"
alias se350="cd ~/Documents/SE3A/SE350;"
alias gitbook="cd ~/GitBook/Library/samiskin/se3a;"

#export JAVA_HOME=`/usr/libexec/java_home -v 1.7.0_79`

alias git='hub'
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

set -o vi



if [ -f /opt/local/etc/bash_completion ]; then
      . /opt/local/etc/bash_completion
    fi




parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
autoload -U colors && colors
source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh

eval $(thefuck --alias)


alias ag='ag --path-to-ignore ~/.agignore'
alias emacs="/usr/local/Cellar/emacs-plus/25.1/Emacs.app/Contents/MacOS/Emacs"
alias e="/usr/local/Cellar/emacs-plus/25.1/bin/emacsclient"

export FZF_DEFAULT_COMMAND='ag --hidden --ignore submodules -g ""'


