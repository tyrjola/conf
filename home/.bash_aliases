alias shu='shutdown now'

alias vim='nvim -p'
alias idea='~/idea/bin/idea.sh'

alias fetch='git fetch --all --prune --tags'
alias amend='git commit --amend'
alias commit='git commit'
alias co='git checkout'
alias cob='git checkout -b'
alias com='git checkout master'
alias reset_master='fetch && git reset --hard origin/master'
alias rebase_master='fetch && git rebase origin/master'
alias push_master='git push origin HEAD:master'
alias push='git push origin'
alias pushf='git push -fu origin'
alias push_master_tags='git push --follow-tags origin HEAD:master'
alias update='git submodule update --init --recursive'
alias clean_branches='git checkout master && git branch | grep -v master | xargs git branch -D'

alias docker_rm_all='docker rm -f $(docker ps -q)'
alias docker_rm_images='docker rmi -f $(docker images -q)'

alias venv2='rm -rf ~/.venv2 && virtualenv -p /usr/bin/python2 ~/.venv2 && source ~/.venv2/bin/activate && pip install neovim'
alias venv3='rm -rf ~/.venv3 && virtualenv -p /usr/bin/python3 ~/.venv3 && source ~/.venv3/bin/activate && pip install neovim'

alias editvim='vim ~/.config/nvim/init.vim'

if [ -f ~/.bash_aliases_secret ]; then
    . ~/.bash_aliases_secret
fi
