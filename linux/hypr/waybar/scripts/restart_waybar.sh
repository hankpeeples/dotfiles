#!/usr/bin/env sh

CONFIG_FILES="$HOME/.config/hypr/waybar/config.jsonc"
STYLE_FILES="$HOME/.config/hypr/waybar/styles.css"

killall -q waybar

waybar --config $CONFIG_FILES --style $STYLE_FILES &
