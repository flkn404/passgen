#!/usr/bin/env bash

valchars='^[0-9]+$'

if ! [[ $1 =~ $valchars ]] || [[ $# -eq 0 ]] ; then
    echo 'usage: '$0' number-of-characters'
    exit 0
fi

< /dev/urandom tr -dc "_$'@'#%{}[]()/\',;:.<>~\'"'"'"'"'`'A-Z-a-z-0-9 | head -c${1:-$1};echo;
