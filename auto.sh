# Usage:
#   echo ". ~/.bash/auto.sh" > ~/.bash_login
#   echo ". ~/.bash/auto.sh" > ~/.bashrc
# Due to Terminal.app stupidity, all shells are login shells 
# (that is, .bash_login is invoked instead of .bashrc on Terminal.app invocation).
# Here we check whether this shell is invoked by SSH and choose appropriate environment

if [ -z "$SSH_TTY" ]; then # no ssh connection, assuming local shell
  . ~/.bash/local.sh
else
	. ~/.bash/remote.sh # connected by ssh
fi
