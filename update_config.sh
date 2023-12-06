#!/bin/bash

REPO="$HOME/Downloads/dotfiles"
CONFIG_DIR="$HOME/.config"

rsync -a "$CONFIG_DIR/alacritty" "$REPO" && echo "Updated Alacritty Config..."
rsync -a "$CONFIG_DIR/nvim" "$REPO" && echo "Updated Neovim Config..."
rsync -a "$CONFIG_DIR/btop" "$REPO" && echo "Updated Btop Config..."
rsync -a "$CONFIG_DIR/hypr" "$REPO" && echo "Updated hypr Config..."
rsync -a "$CONFIG_DIR/spotify-tui" "$REPO" && echo "Updated spotify-tui Config..."
rsync -a "$CONFIG_DIR/dunst" "$REPO" && echo "Updated Dunst Config..."
rsync -a "$CONFIG_DIR/rofi" "$REPO" && echo "Updated Rofi Config..."
rsync -a "$CONFIG_DIR/waybar" "$REPO" && echo "Updated Waybar Config..."
rsync -a "$CONFIG_DIR/swww" "$REPO" && echo "Updated swww Config..."
rsync -a "$CONFIG_DIR/wlogout" "$REPO" && echo "Updated wlogout Config..."
rsync -a "$CONFIG_DIR/swaylock" "$REPO" && echo "Updated swaylock Config..."
rsync -a "$CONFIG_DIR/revive" "$REPO" && echo "Updated revive config..."
rsync "$CONFIG_DIR/starship.toml" "$REPO" && echo "Updated Starship Config..."

rsync "$HOME/.zshrc" "$REPO" && echo "Updated ZSH Config..."


