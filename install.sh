#!/bin/sh
# Under construction
# This script asumes a minimal install using the arch install script

set -e

DOTFILES_REPO="https://github.com/luca0s/dotfiles.git"
DOTFILES_CLONE_DIR="~/dotfiles"

print_message() {
    echo -e "\n\033[1;32m$1\033[0m"
}

# 1. Clone the dotfiles repo
print_message "Cloning dotfiles ..."
if [[ -d "$DOTFILES_CLONE_DIR" ]]; then
    print_message "Directory alerady exists. Removing it"
    rm -rf "$DOTFILES_CLONE_DIR"
fi
sudo -u luca git clone "$DOTFILES_REPO" # "$DOTFILES_CLONE_DIR"
print_message "Dotfiles cloned successfully"
