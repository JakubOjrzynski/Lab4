#!/bin/bash

if [[ "$1" == "--date" ]]; then
    date
fi

if [[ "$1" == "--logs" ]]; then
    for i in {1..100}; do
        echo "Numer pliku $i" > "logx$i.txt"
        echo "stworzone przez $(whoami) w dniu $(date)" >> "logx$i.txt"
    done
fi
