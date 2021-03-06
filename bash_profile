# exports
export PS1="\[\033[91m\]\$PWD\[\e[0m\]\[\033[32m\]\$(parse_git_branch) \[\033[01;34m\]\n>\[\e[0m\] "

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# personal
alias ss='ssh triage.vm'
alias ser='python -m SimpleHTTPServer 8000'
alias li='cd /srv/license_server/dev'
alias ap='cd /srv/appliance/dev'
alias no='vi $HOME/Code/notes'
alias dno='cd $HOME/Code/notes && git pull'
alias tt='$HOME/bin/tunnel'
alias ali='atom host/license_server/dev/'
alias aaa='atom host/appliance/dev/'
alias us='cd $HOME/Code/rewrites/_underscore'
alias ff='cd $HOME/Code/repos/FakeFarmApp'

# rails & friends
alias be='bundle exec'
alias rr='bundle exec rake routes'
alias rmi='bundle exec rake db:migrate'
alias rs='bundle exec rspec spec'

# tools related
alias bp='vi $HOME/shell/bash_profile' # open bash_profile
alias bb="cat $HOME/shell/bash_profile | grep $1 "
alias src='source $HOME/shell/bash_profile'
alias v='vi .'

# unix adjustments
alias ls='ls -AGF'

# git
alias gs='git status -sb'
alias gfa='git fetch --all'
alias gb='git branch'
alias gd='git diff'
alias gco='git checkout'
alias gl='git log'
alias gp='git push'
alias gpom='git pull origin master'
alias game='git add .; git commit'
alias gpp='git pull'
alias gr='git rebase -i'
alias gm='git commit -m'
alias ga='git add .'
alias grhh='git reset --hard HEAD'
alias gcf='git clean -fd'
copr = "!f() { git fetch -fu origin refs/pull/$1/head:pr-$1; git checkout pr-$1; } ; f"

# functions
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
