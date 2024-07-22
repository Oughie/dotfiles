#!/bin/bash

swww-daemon &
waybar &
dunst &
sh $HOME/.dotfiles/.config/hypr/scripts/slideshow.sh &
sh $HOME/.dotfiles/.config/hypr/scripts/power_management.sh &
