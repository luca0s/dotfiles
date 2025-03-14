echo "Installing yay"
sudo pacman -S --noconfirm --needed base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm

yay -Syu --noconfirm
