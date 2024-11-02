#!/bin/sh


## Install Paru

if pacman -Qi paru &> /dev/null; then
  	tput setaf 1;echo "###### Paru is already installed"
else
    tput setaf 2;echo "###### Installing paru "
    sudo pacman -S --needed base-devel
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
    tput setaf 4;echo "###### Paru Installed "
fi


### Installing packages

func_install() {
	if pacman -Qi $1 &> /dev/null; then
  		tput setaf 1;echo "################## The package "$1" is already installed"
	else
    	tput setaf 2;echo "##################  Installing package "  $1
    	sudo pacman -S --noconfirm --needed $1 
    fi
}


list=(
amd-ucode
bat
blueman
bluez
bluez-utils
btop
catppuccin-cursors-mocha
cliphist
dunst
efibootmgr
fastfetch
fzf
grim
grub
gtk3
gtk4
gvfs
gvfs-mtp
hypridle
hyprland
hyprlock
hyprpaper
imagemagick
kitty
lf
libnotify
librewolf-bin
lvm2
man-db
neovim
network-manager-applet
networkmanager
nodejs
npm
nwg-look
papirus-folders-catppuccin-git
pavucontrol
pipewire-alsa
pipewire-pulse
pipewire-zeroconf
polkit-gnome
ripgrep
rofi-wayland
rose-pine-gtk-theme
slurp
thunar
thunar-volman
tmux
ttf-nerd-fonts-symbols
ufw
unzip
waybar
zathura
zathura-pdf-poppler
zsh
)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

### Installing Zap for zsh



###
