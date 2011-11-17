# /etc/skel/.bashrc:
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Enable colors for ls, etc.  Prefer ~/.dir_colors #64489
if [[ -f ~/.dir_colors ]]; then
	eval `dircolors -b ~/.dir_colors`
else
	eval `dircolors -b /etc/DIR_COLORS`
fi

## EXPORTS ##
CVS_RSH=ssh
export CVS_RSH
PATH=$PATH:~/bin
export PATH
EDITOR=/usr/bin/vim
export EDITOR
export DISTCC_DIR=/var/tmp/portage/.distcc/
#export LANG="en_US.UTF-8"

## ALIAS ## 
alias ls="ls --color=auto"
alias l="ls -l -h"
alias df="df -h"
alias gview="gvim -m -R"
alias gvime="gvim -u ~/code/engine/misc/vimrc"
alias gvimv="gvim -u ~/.vimrcv"
alias p="ps faux"
alias vimmate="vimmate > /dev/null 2>&1"

alias dmon="DISTCC_DIR=/var/tmp/portage/.distcc distccmon-text"

alias halt='sudo /sbin/halt'
alias reboot='sudo /sbin/reboot'

alias es='gvim src/*.cpp include/*.h'
alias annotate='annotate -p before'
alias top='sudo top'

# Change the window title of X terminals 
case $TERM in
	xterm*|rxvt*|Eterm)
		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
		;;
	screen)
		PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
		;;
esac
PS1="\[\033[37m\]\w\n\[\033[31m\]\u@\h: \[\033[1;33m\]\$(/usr/bin/tty | /bin/sed -e 's:/dev/::')\[\033[0m\] -> \[\033[0m\]"

# for SSH stuff
keychain ~/.ssh/id_dsa
. ~/.keychain/$HOSTNAME-sh

# Where are we?
#if [ "$LOC_SWITCHED" != "1" ]; then
#	switch_loc
#	export LOC_SWITCHED=1
#fi
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
