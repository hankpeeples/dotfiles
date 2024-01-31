#!/usr/bin/env sh

CONFIG_FILES="$HOME/.config/waybar/config.jsonc"
STYLE_FILES="$HOME/.config/waybar/style.css"

killall -q waybar

waybar --config $CONFIG_FILES --style $STYLE_FILES &
