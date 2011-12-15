# /etc/skel/.bashrc
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


# Put your fun stuff here.
export XMODIFIERS="@im=fcitx"
export XIM=fcitx
export XIM_PROGRAM=fcitx
export PATH=$PATH:~/bin

export TERM=xterm
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \W$(__git_ps1 " (%s)") \$\[\033[00m\] '

unset RUBYOPT

#xmodmap ~/.Xmodmap
source ~/.git-completion.sh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# For vim-ipython Ctrl+S Ctrl+Q
stty stop undef
stty start undef
