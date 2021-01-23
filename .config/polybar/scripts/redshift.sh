#!/bin/sh


checkIfRunning() {
  if pgrep -x redshift > /dev/null ; then
    return 0
  else
    return 1
  fi
}

changeModeToggle() {

  if checkIfRunning ; then
    redshift -x &> /dev/null
    pgrep redshift | xargs -n1 kill -9
  else
    redshift &> /dev/null
  fi
}



case $1 in 
  toggle)
  changeModeToggle
    ;;
  temperature)
    if checkIfRunning ; then
      CURRENT_TEMP=$(redshift -p 2> /dev/null  | grep "Color temperature" | sed 's/.*: //')
      echo "$CURRENT_TEMP"
    else
      echo "off"
    fi
    ;;
esac
