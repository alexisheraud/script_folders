#!/bin/bash

if (($# < 1)); then
    echo "Usage: $0 [HELP]";
fi

if [ "$1" = "help" ] || [ "$1" = "HELP" ]; then
    cat help.txt;
    echo
fi