#!/bin/bash

REPO="$HOME/dotfiles"
CONFIG_DIR="$HOME/.config"
FONT_DIR="$HOME/.local/share/fonts"
``
rsync -a "$CONFIG_DIR/kitty" "$REPO" && echo "Updated Kitty Config..."
rsync -a "$CONFIG_DIR/nvim" "$REPO" && echo "Updated Neovim Config..."
rsync -a "$CONFIG_DIR/btop" "$REPO" && echo "Updated Btop Config..."
rsync -a "$CONFIG_DIR/hypr" "$REPO" && echo "Updated hypr Config..."
rsync -a "$CONFIG_DIR/spotify-tui" "$REPO" && echo "Updated spotify-tui Config..."
rsync -a "$CONFIG_DIR/spotifyd" "$REPO" && echo "Updated spotifyd Config..."

rsync "$HOME/.zshrc" "$REPO" && echo "Updated ZSH Config..."
rsync "$CONFIG_DIR/starship.toml" "$REPO" && echo "Updated Starship Config..."

rsync -a "$CONFIG_DIR/revive" "$REPO" && echo "Updated revive config..."

