# Usage:
#   echo ". ~/.bash/server.sh" > ~/.bash_login

dir=`dirname $BASH_SOURCE`

. $dir/common/terminal.sh
. $dir/common/path.sh
. $dir/common/misc-env.sh
. $dir/common/misc-shortcuts.sh
. $dir/common/git.sh

. $dir/server/range.sh

test -r /sw/bin/init.sh && . /sw/bin/init.sh
