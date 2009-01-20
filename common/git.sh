_dir=$dir 
dir=`dirname $BASH_SOURCE`

. $dir/git-completion.sh
. $dir/git-shortcuts.sh

export PS1="\$(__git_ps1 '%s ')$PS1"

dir=$_dir
