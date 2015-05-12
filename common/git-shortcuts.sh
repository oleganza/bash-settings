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
alias gd='git diff' # show unstaged diff
alias gdc='git diff --cached' # show staged diff (what will be committed)
alias gd1='git diff HEAD' # show unstaged|staged diff (all uncommitted state)
alias grmall="git status | grep 'deleted:' | awk '{print \$3}' | xargs git rm -f"

alias fix='git commit --amend -C HEAD'
alias ff='git merge --ff-only'
alias squash='git merge --squash --no-commit'

alias gll="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# this command loads one letter aliases on demand
git_shortcuts_dir=`dirname $BASH_SOURCE`
alias gitoneletteraliases=". $git_shortcuts_dir/git-one-letter-aliases.sh"


# Git submodule shortcuts

alias gsa='git submodule add'
alias gsu='git submodule update --init'

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
