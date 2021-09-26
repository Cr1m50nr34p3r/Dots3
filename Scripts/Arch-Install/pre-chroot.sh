#!/bin/sh
set -euo pipefail


echo "UPDATING SYSTEM CLOCK"
timedatectl set-ntp true
echo "PARTITIONING"
printf "Whiich Drive do u wanna partition"
read disk
cfdisk /dev/$disk
echo "FORMATTING AND MOUNTING PARTITIONS"
printf "What is your EFI  partition: "
read efi_part
mkfs.fat -F32 /dev/$efi_part
printf "What is your root partition"
read root_part
mkfs.ext4 /dev/$root_part
mount /dev/$root_part /mnt
printf "do you have a Swap: "
read is_swap
if ["$is_swap"=="n" ]
then
    echo "Not making swap partition and moving on"
else
    printf "Name of Swap Partition: "
    read swap_part
    mkswap /dev/$swap_part
    swapon /dev/$swap_part
fi
clear
echo "INSTALLING BASE SYSTEM"
pacstrap /mnt base linux linux-firmware
genfstab -U /mnt >> /mnt/etc/fstab
clear
echo "COPYING SCRIPT FILES ..... "
cp -r $HOME/Arch-Install /mnt
echo "CHANGING ROOT"
arch-chroot /mnt
