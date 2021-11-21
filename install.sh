#!/bin/bash

sudo timedatectl set-ntp true
sudo hwclock --systohc

# Sincronizando os servidores de pacotes mais rápidos
sudo reflector -c Brazil -a 24 --sort rate --save /etc/pacman.d/mirrorlist

#Instalando pacotes extras que podem ter faltado, Iso foi copidado do Ermanno Ferrari, ao menos a maioria

sudo pacman -S --noconfirm grub efibootmgr networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools reflector base-devel linux-headers avahi xdg-user-dirs xdg-utils gvfs gvfs-smb nfs-utils inetutils dnsutils bluez bluez-utils cups hplip alsa-utils pipewire pipewire-alsa pipewire-pulse pipewire-jack bash-completion openssh rsync reflector acpi acpi_call tlp virt-manager qemu qemu-arch-extra edk2-ovmf bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft ipset firewalld flatpak sof-firmware nss-mdns acpid os-prober ntfs-3g terminus-font


#Instalado drivers gráficos,Display manager, DE e outras coisas
sudo pacman -S --noconfirm lolcat cowsay neofeth figlet xf86-video-intel xorg i3-gaps firefox rofi termite dmenu terminator lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings htop bashtop

sudo systemctl enable lightdm.service
/bin/echo -e "\e[1;32mREINICIANDO EM 5..4..3..2..1..\e[0m"
sleep 5
sudo reboot

