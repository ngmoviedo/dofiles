#! /bin/bash
# Toggle redshift and send a notification

if pgrep -x redshift > /dev/null
then
	redshift -x
	pgrep redshift | xargs -n1 kill -9 | notify-send -t 2000 'Redshift stopped'
else
	redshift & > /dev/null
	notify-send -t 2000 'Redshift started'
fi
