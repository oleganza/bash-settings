_dir=$dir 
dir=`dirname $BASH_SOURCE`

. $dir/git-completion.sh
. $dir/git-shortcuts.sh

export PS1="\[\033[0;33m\]\$(__git_ps1 '%s ')\[\033[00m\]$PS1"

dir=$_dir
