#!/bin/bash

# exit if dotfiles is not in home dir
if [ ! -d "$HOME/Downloads/dotfiles" ]
then
  echo "'dotfiles' was not found in $HOME ... exiting"
  exit 1
fi

REPO="$HOME/Downloads/dotfiles"
CONFIG_DIR="$HOME/.config"
FONT_DIR="$HOME/.local/share"

rsync -a "$REPO/nvim" "$CONFIG_DIR" && echo "Updated Neovim Config..."
rsync -a "$REPO/btop" "$CONFIG_DIR" && echo "Updated Btop Config..."

rsync "$REPO/.zshrc" "$HOME" && echo "Updated ZSH Config..."
rsync "$REPO/starship.toml" "$CONFIG_DIR" && echo "Updated Starship Config..."

rsync -r "$REPO/hypr" "$CONFIG_DIR/hypr" && echo "Updated Hypr Config..."
rsync -a "$REPO/revive" "$CONFIG_DIR" && echo "Updated revive config..."

