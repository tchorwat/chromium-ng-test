#!/bin/bash
set -e
# check for ng expected command
if [ "$1" = 'ng' ] || [ -z "$1" ]; then
	# npm ci if needed
	[ ! -f package-lock.json ] || [ -d node_modules ] || { echo '' | npm ci --prefer-offline; } 
    # execute ng
	if [ "$1" = 'ng' ]; then
	    exec "$@"
	fi
fi
# else default to run whatever the user wanted like "bash" or "sh"
exec "$@"