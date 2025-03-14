#!/bin/bash
# Under construction
# This script asumes a minimal install using the arch install script

REPO_URL="https://github.com/luca0s/dotfiles.git"
DOTS_CLONE_DIR="~/dotfiles"
REPO_NEOVIM="https://github.com/luca0s/nvim.git"

exec_script(){
    local script="$1"
    local script_path="$DOTS_CLONE_DIR/helper_scripts/$script"
    chmod +x "$script_path"
    env "$script_path"
    echo "returning from script call"
}

echo "Installing git"
sudo pacman -S git

echo "Cloning dotfiles repo ..."
git clone "$REPO_URL" "~/dotfiles"

echo "Installing yay"
exec_script "yay.sh"

echo "Installing all the packages ..."
yay -S --noconfirm < "$DOTS_CLONE_DIR/pkgs.txt"

echo "Installing neovim config ..."
git clone "$REPO_NEOVIM" "~/.config/nvim"

echo "Launching rust installer ..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# TODO: still need to source cargo here such that the next command dosn't fail

cargo install tmux-sessionizer
