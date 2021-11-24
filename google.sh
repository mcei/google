#!/bin/bash

# This script can be used for googling in terminal

if [ "$#" -lt 1 ]; then
	echo
	echo 'Illegal number of arguments'
	echo 'Usage example: ./google.sh how to exit vim'
	echo
	exit 1
fi

if [ ! $(which w3m) ]; then
	echo
	echo 'w3m text-based web browser not found'
	echo 'Install with: sudo apt install w3m'
	echo
	exit 1
fi

QUERY=$(tr ' ' '+' <<<$@)

w3m "https://www.google.com/search?q=${QUERY}"
