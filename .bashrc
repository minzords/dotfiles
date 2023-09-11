#
# ~/.bashrc
#

# Detect OS
if [ "$(uname -s)" = "Linux" ]; then 
	is_linux=yes; 
elif [ "$(uname -s)" = "NetBSD" ]; then
	is_netbsd=yes
fi

# Detect Workstation (Arch)
if [ -f "/etc/arch-release" ]; then
	is_workstation=yes;
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set Editor
EDITOR=vim
VISUAL=$EDITOR
CVSEDITOR=$EDITOR
PKGEDITOR=$EDITOR
PAGER=less

if [ "${is_workstation}" ]; then
	# Set PATH for using composer global bin package like laravel command
	SYMFONY=$HOME/.symfony5/bin
	LARAVEL=$(composer global config bin-dir --absolute --quiet)
	RUST=$HOME/.cargo/bin	
	BUN=$HOME/.bun/bin
	COMPOSER=./vendor/bin:./node_modules/.bin
	PATH=$LARAVEL:$SYMFONY:$RUST:$BUN:$COMPOSER:$PATH
fi

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

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
