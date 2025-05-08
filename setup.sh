#!/bin/bash

set -e

echo "📦 Installing packages..."
bash scripts/install-packages.sh

echo "🔗 Copying config files..."
mkdir -p ~/.config/hypr ~/.config/gtk-3.0 ~/.config/gtk-4.0

cp $(pwd)/hypr/hyprland.conf ~/.config/hypr/hyprland.conf || true
cp $(pwd)/waybar/config.jsonc ~/.config/waybar/config.jsonc || true
cp $(pwd)/waybar/style.css ~/.config/waybar/style.css || true
cp $(pwd)/gtk/gtk-3.0/settings.ini ~/.config/gtk-3.0/settings.ini || true
cp $(pwd)/gtk/gtk-4.0/settings.ini ~/.config/gtk-4.0/settings.ini || true

echo "✅ Setup complete. Restart Hyprland to apply."
