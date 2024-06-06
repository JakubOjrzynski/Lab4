#!/bin/bash

if [[ "$1" == "--date" ]]; then
    date
fi

if [[ "$1" == "--logs" && -z "$2" ]]; then
    for i in {1..100}; do
        echo "Numer pliku $i" > "logx$i.txt"
        echo "stworzone przez $(whoami) w dniu $(date)" >> "logx$i.txt"
    done
fi

if [[ "$1" == "--logs" && -n "$2" ]]; then
    num_files=$2
    for i in $(seq 1 $num_files); do
        echo "numer pliku $i" > "logx$i.txt"
        echo "stworzony przez $(whoami) w dniu $(date)" >> "logx$i.txt"
    done
fi

if [[ "$1" == "--help" ]]; then
    echo "--date: wyswietlenie daty"
    echo "--logs [n]: utworzenie n plikow (bez parametru 100)"
    echo "--help: pomoc"
fi


