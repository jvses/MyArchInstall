#!/bin/bash

#sudo timedatectl set-ntp true
#sudo hwclock --systohc

# Sincronizando os servidores de pacotes mais rápidos
#sudo reflector -c Brazil -a 48 --sort rate --save /etc/pacman.d/mirrorlist

#Instalando pacotes extras que podem ter faltado, Isso foi copidado do Ermanno Ferrari, ao menos a maioria

sudo pacman -S grub efibootmgr networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools reflector base-devel linux-headers avahi xdg-user-dirs xdg-utils gvfs gvfs-smb nfs-utils inetutils dnsutils bluez bluez-utils cups hplip alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call tlp virt-manager qemu qemu-arch-extra edk2-ovmf bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft ipset firewalld flatpak sof-firmware nss-mdns acpid os-prober ntfs-3g terminus-font lolcat cmatrix cowsay neofeth figlet xf86-video-intel xorg i3-gaps firefox rofi terminator dmenu terminator lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings htop bashtop feh lxappearance thunar nautilus pavucontrol file-roller mpv imv git vim midori discord arandr xorg-xrandr arduino evince gedit flatpak tlp clamav clamtk

#Instalando fontes
#sudo pacman -S --noconfirm dina-font tamsyn-font bdf-unifont ttf-bitstream-vera ttf-croscore ttf-dejavu ttf-droid gnu-free-fonts ttf-liberation ttf-linux-libertine noto-fonts ttf-roboto tex-gyre-fonts ttf-ubuntu-font-family ttf-anonymous-pro ttf-cascadia-code ttf-fira-mono ttf-hack ttf-fira-code ttf-jetbrains-mono adobe-source-code-pro-fonts cantarell-fonts adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts-cjk noto-fonts-emoji

#Instalado drivers gráficos,Display manager, DE e outras coisas
# sudo pacman -S lolcat cmatrix cowsay neofeth figlet xf86-video-intel xorg i3-gaps firefox rofi terminator dmenu terminator lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings htop bashtop feh lxappearance thunar nautilus pavucontrol file-roller mpv imv git vim midori discord arandr xorg-xrandr arduino evince gedit flatpak tlp clamav clamtk

# Atualizando as definições de vírus do anti-vírus

sudo freshclam

sudo systemctl enable lightdm.service
sudo systemctl enable NetworkManager
sudo systemctl enable bluetooth
sudo systemctl enable cups.service
sudo systemctl enable tlp
sudo systemctl enable clamav-freshclam.service
sudo systemctl enable clamav-daemon.service

#cd ~
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si PKGBUILD

# ; slack-desktop telegram-desktop-bin video-downloader pdfarranger-git handbrake-full picom-jonaburg-git i3lock-color teams bottles projectlibre drawio-desktop odysee-nativefier 

# pacotes para instalar da AUR
# xinit-xsession teams ytfzf bottles drawio handbrake odisee i3lock-color polybar pdf-arranger picomjo o instalador de fontes projectlibre brave vscode telegram slack inkscape videodownloader spotify gotp 
/bin/echo -e "\e[1;32mREINICIANDO EM 5..4..3..2..1..\e[0m"
sleep 5
sudo reboot

