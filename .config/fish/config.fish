# Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty &> /dev/null
    end
end

# Alias
# thefuck
thefuck --alias | source
# neovim
alias vim='nvim'
#alias vi='nvim' # done via symlink
# xterm
#alias xterm='kitty' # done via symlink (to open text files in pcmanfm-qt using
#nvim)
# matlab (no GUI)
alias matlab-cli='set -x MESA_LOADER_DRIVER_OVERRIDE i965; matlab -nodesktop -nosplash'
# wheather forecast
alias weather='wttr Oviedo'
# pager
alias less='nvimpager -p'
# cat alternative
alias cat='bat --paging=never'


