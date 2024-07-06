#!/bin/bash
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf copr enable -y swayfx/swayfx
sudo dnf copr enable -y g3tchoo/prismlauncher
sudo dnf install -y swayfx waybar alacritty git wofi grim slurp firefox neofetch meson pulseaudio pavucontrol telegram-desktop xdg-desktop-portal-wlr imv mpv grim slurp swaybg swaylock mako tar htop unzip cava pcmanfm wf-recorder polkit-gnome wl-clipboard webkitgtk6.0 qt5-qtwebview qt6-qtwebview wxGTK-webview prismlauncher
export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland

mkdir my_config/
mv swayfx/my_config/* /my_config/

mkdir .config/waybar/
mv my_config/waybar/* .config/waybar/

mkdir .config/neofetch/
mv my_config/neofetch/* .config/neofetch/
