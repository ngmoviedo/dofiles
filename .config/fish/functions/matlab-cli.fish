# Defined in - @ line 1
function matlab-cli --wraps='set -x MESA_LOADER_DRIVER_OVERRIDE i965; matlab -nodesktop -nosplash' --description 'alias matlab-cli=set -x MESA_LOADER_DRIVER_OVERRIDE i965; matlab -nodesktop -nosplash'
  set -x MESA_LOADER_DRIVER_OVERRIDE i965; matlab -nodesktop -nosplash $argv;
end
