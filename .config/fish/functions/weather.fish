# Defined in - @ line 1
function weather --wraps='wttr Oviedo' --description 'alias weather=wttr Oviedo'
  wttr Oviedo $argv;
end
