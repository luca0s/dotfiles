#!/bin/sh
# Under construction
# This script asumes a minimal install using the arch install script

set -e

DOTFILES_REPO="https://github.com/luca0s/dotfiles.git"
DOTFILES_CLONE_DIR="$HOME/dotfiles"
NVIM_REPO="https://github.com/luca0s/nvim.git"
YAY_REPO="https://aur.archlinux.org/yay.git"

print_message() {
    echo -e "\n\033[1;32m$1\033[0m"
}

# 1. Clone the dotfiles repo
print_message "Cloning dotfiles ..."
if [[ -d "$DOTFILES_CLONE_DIR" ]]; then
    print_message "Directory alerady exists. Removing it"
    rm -rf "$DOTFILES_CLONE_DIR"
fi
git clone "$DOTFILES_REPO" "$DOTFILES_CLONE_DIR"
print_message "Dotfiles cloned successfully"

# 2. Install yay
print_message "Check if yay is already installed"
if ! command -v yay &> /dev/null; then
    print_message "Yay is not installed. Installing it now"
    if [[ -d "$HOME/yay" ]]; then
        print_message "Exsisting yay directory found. Removing it"
        rm -rf "$HOME/yay"
    fi

    sudo pacman -S --needed --noconfirm base-devel
    git clone "$YAY_REPO"
    cd "$HOME/yay"
    makepkg -si --noconfirm

    print_message "Successfully installed yay"
else
    print_message "Yay already installed"
fi

# 3. Install packages
print_message "Installing packages from package list"
yay -S --noconfirm --needed - < "$DOTFILES_CLONE_DIR/pkgs.txt"
print_message "Successfully installed packages"

# Enable sddm and change theme
sudo systemctl enable sddm.service
sh -c "$(curl -fsSL https://raw.githubusercontent.com/keyitdev/sddm-astronaut-theme/master/setup.sh)"

# 4. Install rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"

# 5. Install tmux-sessionizer
cargo install tmux-sessionizer

# 6. Stow all the needed configs
stow kitty
stow zshrc
stow tmux
stow hypr
stow waybar
stow rofi
stow wallpapers

# 7. Clone nvim config
git clone "$NVIM_REPO" "$HOME/.config/nvim"

# 8. Change default shell
chsh -s "$(which zsh)"
