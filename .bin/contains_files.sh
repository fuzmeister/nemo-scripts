#!/bin/bash
count=$(find -H "$1" -maxdepth 1 -type f -name "*.$2" 2>/dev/null | wc -l)
if [ $count != 0 ]
then 
	exit 0
else
	exit 1
fi
