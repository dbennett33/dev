#!/usr/bin/env bash

# Define source directories
SOURCE_DIRS=(
    "$HOME/.config/hypr"
    "$HOME/.config/waybar"
    "$HOME/.config/nvim"
    "$HOME/.config/gtk-3.0"
    "$HOME/.config/gtk-4.0"
    "$HOME/.config/kitty"
    "$HOME/.config/wofi"
)

# Define destination directory
DEST_DIR="$HOME/dev/dev"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Loop over source directories and copy them
for DIR in "${SOURCE_DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        echo "Copying $DIR to $DEST_DIR"
        cp -a "$DIR" "$DEST_DIR"
    else
        echo "Skipping $DIR (not found)"
    fi
done

echo "Copy complete."

