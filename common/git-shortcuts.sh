# Git shortcuts
alias gs='git status; git submodule status'
alias ga='git add'
# alias gc='git commit -m'    (See function below)
alias gull='git pull'
alias gush='git push'
alias gsh='git show'
alias gl='git log'
alias gb='git branch'
alias gco='git checkout'
alias gd='git diff'
alias gd1='echo "git diff HEAD";  git diff HEAD'
alias gd2='echo "git diff HEAD^"; git diff HEAD^'
alias grmall="git status | grep 'deleted:' | awk '{print \$3}' | xargs git rm -f"

# this command loads one letter aliases on demand
git_shortcuts_dir=`dirname $BASH_SOURCE`
alias gitoneletteraliases=". $git_shortcuts_dir/git-one-letter-aliases.sh"


# Git submodule shortcuts

alias gsa='git submodule add'
alias gsu='git submodule update --init'

# Git svn shortcuts
alias gf='git svn fetch'
alias gfr='git svn fetch && git svn rebase'
alias gdc='git svn dcommit'
alias gnc='git svn fetch && git svn rebase && git svn dcommit'
alias gcn='git svn fetch && git svn rebase && git svn dcommit'

# Usage:
#   gc 'bug is fixed'                 # non-interactive mode
#   gc                                # interactive mode
#   Commit message: bug is fixed
#
function gc { 
  local commitmessage
  if [ "" = "$1" ]; then 
    echo -n 'Commit message: '
    commitmessage="$(ruby -e "puts gets")"
    git commit -m "$commitmessage"
  else
    git commit -m "$1"
  fi
}
