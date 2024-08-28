#!/bin/bash

# Change the wallpaper every 5 minutes

cd $HOME/.dotfiles/wallpapers/

while sleep 300; do
    file="$(ls *.jpg *.png | sort -R | tail -1)"
    swww img "$file" -t=wipe --transition-angle 15
done
