#! /bin/bash

if [ -z $1 ]; then
	echo "Hello Sargeras !"
else
	while [ $# -ne 0 ]; do
		echo hello $1
		shift
		shift
	done
fi
