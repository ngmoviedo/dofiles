# Defined in - @ line 1
function vitty --wraps='kitty -o allow_remote_control=yes --listen-on unix:/tmp/mykitty nvim &>/dev/null & disown' --description 'alias vitty kitty -o allow_remote_control=yes --listen-on unix:/tmp/mykitty nvim &>/dev/null & disown'
  kitty -o allow_remote_control=yes --listen-on unix:/tmp/mykitty nvim &>/dev/null & disown $argv;
end
