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

# alias startstkr='cd ~/remind/repos/stacker; . ~/venv/stacker/bin/activate; sudo python setup.py install'
# alias runstkr='sudo python setup.py install; ./scripts/stacker -m 1 -d shiranka.remind.com conf/stack.yaml'
# alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
# docker-ip() {
#   boot2docker ip 2> /dev/null
# }
# alias got='go test ./...'
# alias runenvy='go build; go install; make cmd; ./build/envy -port 8000'
# alias frontend='cd ~/remind/repos/r101-frontend'
# alias dynamo='cd ~/Downloads/dynamodb_local_2015-01-27/; java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar'
# alias hermes='cd ~/go/src/github.com/remind101/r101-hermes; make runlocal'
# alias push_heroku_staging='git push staging HEAD:master'
# alias api_admin_console='heroku run rails console -a r101-api'
# AWS_ACCESS_KEY_ID=AKIAJ2GMFVSTMQPKENQQ
# AWS_SECRET_ACCESS_KEY=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
# export AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY
# export DOCKER_HOST=tcp://192.168.59.103:2376
# export DOCKER_CERT_PATH=/Users/shirankamisin/.boot2docker/certs/boot2docker-vm
# export DOCKER_TLS_VERIFY=1
# export GOROOT=/usr/local/go
# export GOPATH=/Users/shirankamisin/go
# export QUAYD=/Users/shirankamisin/go/src/github.com/remind101/quayd
# export CELSUS=/Users/shirankamisin/go/src/github.com/remind101/celsus
# export SLUGGY=/Users/shirankamisin/go/src/github.com/remind101/sluggy
