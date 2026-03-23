#!/bin/bash

while true; do
    for archivo in ~/EPNro1/entrada/*.txt; do
        [ -e "$archivo" ] || continue
        cat "$archivo" >> ~/EPNro1/salida/$FILENAME.txt
        mv "$archivo" ~/EPNro1/procesado/
    done
    sleep 5
done
