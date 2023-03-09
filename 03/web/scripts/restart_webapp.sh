#!/bin/bash

PID_FILE=/myapp/tmp/pids/server.pid
if [ ! -f $PID_FILE ]; then
	echo "Not started rails..."
	exit 1
fi

kill $(cat $PID_FILE)
sleep 3
/var/scripts/start_webapp.sh
