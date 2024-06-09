#!/bin/bash

if [[ "$1" == "--date" || "$1" == "-d" ]]; then
    date
fi

if [[ "$1" == "--logs" || "$1" == "-l" ]]; then
    num_files=${2:-100}
    for i in $(seq 1 $num_files); do
        echo "numer pliku $i" > "logx$i.txt"
        echo "stworzony przez $(whoami) w dniu $(date)" >> "logx$i.txt"
    done
fi

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "--date, -d: wyswietlenie daty"
    echo "--logs, -l [n]: utworzenie n plikow (bez parametru 100)"
    echo "--help, -h: pomoc"
fi


