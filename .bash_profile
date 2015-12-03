eval "$(rbenv init -)"
source ~/.bashrc
alias git='hub'
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:/usr/local/bin/:~/packer/:/Users/shirankamisin/go/bin/:/Users/shirankamisin/bin/:$PATH"
AWS_ACCESS_KEY_ID=AKIAJ2GMFVSTMQPKENQQ
AWS_SECRET_ACCESS_KEY=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
export AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/shirankamisin/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export GOROOT=/usr/local/go
export GOPATH=/Users/shirankamisin/go
export QUAYD=/Users/shirankamisin/go/src/github.com/remind101/quayd
export CELSUS=/Users/shirankamisin/go/src/github.com/remind101/celsus
export SLUGGY=/Users/shirankamisin/go/src/github.com/remind101/sluggy

eval "$(rbenv init -)"
alias startstkr='cd ~/remind/repos/stacker; . ~/venv/stacker/bin/activate; sudo python setup.py install'
alias runstkr='sudo python setup.py install; ./scripts/stacker -m 1 -d shiranka.remind.com conf/stack.yaml'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
docker-ip() {
  boot2docker ip 2> /dev/null
}
alias got='go test ./...'
alias runenvy='go build; go install; make cmd; ./build/envy -port 8000'
alias frontend='cd ~/remind/repos/r101-frontend'
alias dynamo='cd ~/Downloads/dynamodb_local_2015-01-27/; java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar'
alias hermes='cd ~/go/src/github.com/remind101/r101-hermes; make runlocal'
alias push_heroku_staging='git push staging HEAD:master'
alias api_admin_console='heroku run rails console -a r101-api'
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
eval "$(rbenv init -)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

set -o vi

if [ -f /opt/local/etc/bash_completion ]; then
      . /opt/local/etc/bash_completion
    fi
