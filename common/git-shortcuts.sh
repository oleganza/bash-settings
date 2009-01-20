# Git shortcuts
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git pull $* && git push $*'
alias gull='git pull'
alias gush='git push'
alias gsh='git show'
alias gl='git log'
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'
alias gd1='echo "git diff HEAD";  git diff HEAD'
alias gd2='echo "git diff HEAD^"; git diff HEAD^'
alias grmall="gs | grep 'deleted:' | awk '{print \$3}' | xargs git rm -f"

# Git svn shortcuts
alias gf='git svn fetch'
alias gfr='git svn fetch && git svn rebase'
alias gdc='git svn dcommit'
alias gnc='git svn fetch && git svn rebase && git svn dcommit'
alias gcn='git svn fetch && git svn rebase && git svn dcommit'
