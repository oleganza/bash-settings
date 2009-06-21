# Usage:
#   echo ". ~/.bash/local.sh" > ~/.bashrc

dir=`dirname $BASH_SOURCE`

. $dir/common/terminal.sh

export PS1='\[\033[0;37m\]\w\[\033[00m\] \$ ' # override PS1 to a simpler format

. $dir/common/path.sh
. $dir/common/misc-env.sh
. $dir/common/misc-shortcuts.sh

. $dir/desktop/path.sh
. $dir/desktop/misc-env.sh
. $dir/desktop/editors.sh
. $dir/desktop/flash-log.sh
. $dir/desktop/work.sh

. $dir/common/git.sh

alias rc='cd ~/.bash; mate . -w; source ~/.bash_login'

test -r /sw/bin/init.sh && . /sw/bin/init.sh
