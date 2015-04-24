#!/bin/bash

function node_stuff {
	npm install
	cd min_admin/static
	GIT_SSL_NO_VERIFY=true bower install --allow-root -q
	cd /djangoapp
	grunt
}

if [ "$1" == 'django' ] || [ "$1" == 'dj' ] || [[ "$1" =~ 'manage.py' ]]; then
	params=${@:2}

	echo $2

	if [[  "$2" =~ 'runserver'  ]]; then
		node_stuff
	fi

	exec python ./manage.py $params
elif [[ "$1" == 'node_static' ]]; then
	node_stuff
	exit 0
fi

exec "$@"
