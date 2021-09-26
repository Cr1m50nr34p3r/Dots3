#!/usr/bin/env bash
set -euo pipefail

echo "SETTING TIME ZONE"
echo ""
ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
hwclock --systohc
clear
echo "GENERATING LOCALES"
echo ""
sed 's/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8'
locale-gen
clear
echo "STARTING NETWORK CONFIGURATION"
echo ""
printf "Hostname: "
read hostname
echo "creating /etc/host..."
echo $hostname >> /etc/hostname
echo "creating /etc/hosts....."
echo "127.0.0.1     localhost" >> /etc/hosts
echo "::1           localhost" >> /etc/hosts
echo "127.0.0.1     $hostname.localdomain $hostname" >> /etc/hosts
echo "INITRAMFS"
echo ""
mkinitcpio -P
clear
echo "CHANGING ROOT PASSWORD"
echo ""
passwd
clear
echo "ADDING NEW USER"
echo ""
printf "Username: "
read username
useradd -m $username
echo "create password for $username"
echo ""
passwd $username
echo "adding user to groups....."
usermod -aG wheel,video,optical,storage,audio $username
echo "setting up sudo ...."
echo ""
pacman -S --needed --noconfirm sudo vi vim
clear
echo "setup sudo "
visudo
clear
echo "SETTING UP GRUB"
echo ""
pacman -S --noconfirm grub efibootmgr os-prober dosfstools mtools
clear
mkdir /boot/EFI
echo ""
printf "Name of EFI Partition: "
read efi_part
mount /dev/$efi_part /boot/EFI
grub-install --target=x86_64-efi --bootloader-id=grub_uefi --recheck
grub-mkconfig -o /boot/grub/grub.cfg
clear
echo "INSTALLING BASIC STUFF"
pacman -S --noconfirm --needed vim networkmanager git
clear
systemctl enable NetworkManager
clear
echo "#########################################"
echo "### ARCH LINUX SUCCESSFULLY INSTALLED ###"
echo "#########################################"
