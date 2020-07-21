#!/bin/bash
if [ -n "$1" ]
then
	find "$1" -depth -maxdepth 1 -type f -exec rename 's/(.*)\/([^\/]*)/$1\/\L$2/' {} \;
	exit 0
fi
