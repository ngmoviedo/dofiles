# Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty &> /dev/null
    end
end

# Alias
thefuck --alias | source
alias vim='vim --servername vim'
# alias vi='vim --servername vim'
alias matlabcli='set -x MESA_LOADER_DRIVER_OVERRIDE i965; matlab -nodesktop -nosplash'
alias weather='wttr Oviedo'


