#!/bin/bash

# This script copies the Neovim configuration from this repository to the
# required location on your system.

set -e

# The directory where Neovim's configuration is stored.
CONFIG_DIR="$HOME/.config/nvim"

# The directory of this script, which is the root of the repository.
REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Creating Neovim configuration directory at $CONFIG_DIR..."
mkdir -p "$CONFIG_DIR/lua"

echo "Copying init.lua to $CONFIG_DIR..."
cp -f "$REPO_DIR/init.lua" "$CONFIG_DIR/"

echo "Copying lua directory to $CONFIG_DIR/lua..."
cp -rf "$REPO_DIR/lua/"* "$CONFIG_DIR/lua/"

echo "Installation complete! Your Neovim configuration has been updated."
