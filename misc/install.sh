#!/bin/sh


## Install Paru

if pacman -Qi paru &> /dev/null; then
  	tput setaf 1;echo "###### Paru is already installed"
else
    tput setaf 2;echo "###### Installing paru "
    cd
    sudo pacman -S --needed base-devel
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
    tput setaf 4;echo "###### Paru Installed "
fi


### Installing packages

func_install() {
	if paru -Qi $1 &> /dev/null; then
  		tput setaf 1;echo "################## The package "$1" is already installed"
	else
    	tput setaf 2;echo "##################  Installing package "  $1
	 paru -S --noconfirm --needed $1 
    fi
}


list=(
#amd-ucode
bat
brightnessctl
btop
cliphist
#dunst
#everforest-gtk-theme-git
everforest-icon-theme-git
eza
fastfetch
fzf
#git
#grim
gruvbox-gtk-theme-git
#gruvbox-icon-theme-git
gtk3
gtk4
gvfs
gvfs-mtp
hyprutils-git
hypridle
hyprland
hyprlock
hyprpaper
hyprpicker
hyprsunset
imagemagick
kitty
lf
libnotify
librewolf-bin
#man-db
mpv
neovim
network-manager-applet
#networkmanager
#nodejs
#npm
nwg-look
#papirus-folders-catppuccin-git
#pavucontrol
#pipewire-alsa
#pipewire-pulse
#pipewire-zeroconf
#polkit-gnome
ripgrep
rofi-wayland
rose-pine-cursor
#rose-pine-gtk-theme
#slurp
starship
stow
swaync
swayosd-git
thunar
thunar-volman
tmux
ttf-nerd-fonts-symbols
ufw
unzip
waybar
yazi
zathura
zathura-pdf-poppler
zoxide
zsh
)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

