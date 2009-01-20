
# You may uncomment the following lines if you want `ls' to be colorized:
#eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -lh'
alias l='ls $LS_OPTIONS -lhA'

alias cd..='cd ..'

alias tgz="tar -cvzf "
alias zxvf="tar zxvf "
alias g?="grep \$1"
alias rake?="rake -T | g? \$1"
alias gem?="gem list | g? \$1"

alias mgem="cd \$GEMS; mate \$1"
