#!/bin/bash

cd $HOME/.config/wallpapers/

while sleep 3; do
    file="$(ls *.jpg *.png | sort -R | tail -1)"
    swww img "$file" -t=wipe --transition-angle 15
done
