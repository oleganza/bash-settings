# Usage:
#   echo ". ~/.bash/mbp-pierlocopter.sh" > ~/.bash_login

dir=`dirname $BASH_SOURCE`

. $dir/common/terminal.sh

export PS1='\w \$ ' # override PS1 to a simpler format

. $dir/common/path.sh
. $dir/common/misc-env.sh
. $dir/common/misc-shortcuts.sh
. $dir/common/git.sh

. $dir/desktop/path.sh
. $dir/desktop/misc-env.sh
. $dir/desktop/editors.sh
. $dir/desktop/flash-log.sh
. $dir/desktop/work.sh

alias rc='mate ~/.bash -w; source ~/.bash_login'
alias f5='source ~/.bash_login'

test -r /sw/bin/init.sh && . /sw/bin/init.sh
