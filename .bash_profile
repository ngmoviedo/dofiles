#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Environment variables
export TERMINAL=kitty # i3-sensible-terminal
export TERMCMD=kitty # default terminal for ranger

export QT_QPA_PLATFORMTHEME=qt5ct # QT5 theming

# Autostart X at login
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
	exec startx
fi

