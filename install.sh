#!/bin/bash
# Under construction
# This script asumes a minimal install using the arch install script

REPO_URL="https://github.com/luca0s/dotfiles.git"
REPO_NEOVIM="https://github.com/luca0s/nvim.git"

# 1. Install git and yay
echo "Installing git and yay ..."

sudo pacman -S --noconfirm --needed git base-devel
git clone https://aur.archlinux.org/yay.git || { echo Failed to clone yay repo; exit 1; }
cd yay || { echo Failed to move to directory; exit 1; }
makepkg -si --noconfirm || { echo Failed to install yay form AUR; exit 1; }

yay -Syu --noconfirm || { echo Failed to upgrade system; exit 1; }

# 2. Clone the dotfiles repo
echo "Cloning dotfiles repo ..."
git clone "$REPO_URL" "~/dotfiles" || { echo Failed to clone dotfiles; exit 1; }

# 3. Install packages from pkglist
echo "Installing all the packages ..."
yay -S --noconfirm < "~/dotfiles/pkgs.txt" || { echo Failed to install packages from package list; exit 1; }

# 4. Download the neovim config
echo "Installing neovim config ..."
git clone "$REPO_NEOVIM" "~/.config/nvim" || { echo Failed to clone nvim config; echo 1; }

# 5. Install rust and tms
echo "Launching rust installer ..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# TODO: still need to source cargo here such that the next command dosn't fail

# 6. Install tms via cargo
cargo install tmux-sessionizer
