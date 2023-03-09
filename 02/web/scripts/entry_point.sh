#!/bin/bash
/var/scripts/start_webapp.sh

# Dockerのcommandで指定したプロセスが終わるとコンテナ自体が落ちてしまうため
# プロセスが終わらないように対策している
PERMANENT_PROC="tail -f /dev/null"
PERMANENT_PROC_ID=`ps -A -o pid,cmd | grep "${PERMANENT_PROC}" | grep -v grep | awk '{ print $1 }'`
#echo "PERMANENT_PROC_ID:$PERMANENT_PROC_ID"
if [ -z "$PERMANENT_PROC_ID" ]; then
	tail -f /dev/null
fi
