#!/bin/bash

REPO_URL="https://github.com/luca0s/dotfiles.git"
REPO_NEOVIM="https://github.com/luca0s/nvim.git"

# 1. Install git and yay
echo "Installing git and yay ..."
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# 2. Clone the dotfiles repo
echo "Cloning dotfiles repo ..."
git clone "$REPO_URL" "~/dotfiles"

# 3. Install packages from pkglist
echo "Installing all the packages ..."
yay -S < "~/dotfiles/pkg.txt"

# 4. Download the neovim config
echo "Installing neovim config ..."
git clone "$REPO_NEOVIM" "~/.config/nvim"

# 5. Install rust and tms
echo "Launching rust installer ..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# 6. Install tms via cargo
cargo install tmux-sessionizer
