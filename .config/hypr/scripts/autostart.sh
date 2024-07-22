#!/bin/bash

swww-daemon &
waybar &
dunst &
sh $HOME/.dotfiles/hypr/scripts/slideshow.sh &
sh $HOME/.dotfiles/hypr/scripts/power_management.sh &
