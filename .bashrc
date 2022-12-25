#
# ~/.bashrc
#

# Detect OS
if [ "$(uname -s)" = "Linux" ]; then 
	is_linux=yes; 
elif [ "$(uname -s)" = "NetBSD" ]; then
	is_netbsd=yes
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set Editor
EDITOR=vim
VISUAL=$EDITOR
CVSEDITOR=$EDITOR
PKGEDITOR=$EDITOR
PAGER=less

# Set Prompt
PS1='[\u@\h \W]\$ '

# Set Alias
if [ "${is_linux}" ]; then
	alias ls='ls --color=auto'

elif [ "${is_netbsd}"]; then
	alias vi="/usr/pkg/bin/vim"
fi

# Set QT Theme
if [ $XDG_CURRENT_DESKTOP == "GNOME" ]; then
	QT_QPA_PLATFORMTHEME=gnome
fi
