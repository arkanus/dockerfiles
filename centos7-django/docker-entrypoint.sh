#!/bin/bash
set -e

if [ "$1" = 'nginx' ]; then
	nginx
	while [ -f /var/run/nginx.pid ]
	do
	  sleep 7
	done
else 
	exec "$@"
fi
