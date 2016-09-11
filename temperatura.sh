#! /bin/bash

# pobranie ustawień
source ./config

# pobranie temperatury
TMP=$(cat $TERMOMETR | grep  -E -o ".{0,0}t=.{0,5}" | /usr/bin/cut -c 3-)

# wyswietlenie temperatury
echo "$TMP 1000" | awk '{printf "%.2f\n", $1/$2}'

