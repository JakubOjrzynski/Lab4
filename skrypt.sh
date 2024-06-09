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
    echo "--init: klonowanie repozytorium"
    echo "--error, -e [n]: utworzenie n errorow (domyslnie 100)"
fi

if [[ "$1" == "--init" ]]; then
    repo_url="https://github.com/JakubOjrzynski/Lab4"
    current_dir=$(pwd)
    git clone "$repo_url" "current_dir/repository"
    export PATH=$PATH:"$current_dir/repository"
fi

if [[ "$1" == "--error" || "$1" == "-e" ]]; then
    num_files=${2:-100}
    for i in $(seq 1 $num_files); do
        echo "numer errora $i" > "errorx$i.txt"
        echo "stworzone przez $(whoami) w dniu $(date)" >> "errorx$i.txt"
    done
fi
