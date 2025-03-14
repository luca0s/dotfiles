echo "Installing yay"
sudo pacman -S --noconfirm --needed base-devel
git clone https://aur.archlinux.org/yay.git || { echo Failed to clone yay repo; exit 1; }
cd yay || { echo Failed to move to directory; exit 1; }
makepkg -si --noconfirm || { echo Failed to install yay form AUR; exit 1; }

yay -Syu --noconfirm || { echo Failed to upgrade system; exit 1; }
