#!/bin/bash

set -e

echo "📦 Installing required packages..."

sudo pacman -S --needed --noconfirm hyprland waybar kitty thunar papirus-icon-theme

echo "📦 Installing AUR packages..."
if ! yay -Q catppuccin-gtk-theme &>/dev/null; then
    yay -S --needed --noconfirm catppuccin-gtk-theme
else
    echo "✅ catppuccin-gtk-theme already installed."
fi

echo "✅ All packages installed."
