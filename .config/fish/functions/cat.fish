# Defined in - @ line 1
function cat --wraps='bat --paging=never' --description 'alias cat=bat --paging=never'
  bat --paging=never $argv;
end
