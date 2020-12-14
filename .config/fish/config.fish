# Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty &> /dev/null
    end
end

# Alias
# thefuck
thefuck --alias | source

