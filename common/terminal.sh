export PS1='\u@\h \w \$ '

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

umask 022

if [ "$TERM" = dtterm ] ; then
    export TERM=vt100
    export LANG=en_US.UTF-8
    export LC_ALL=en_US.UTF-8
fi
