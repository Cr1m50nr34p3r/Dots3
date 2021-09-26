#!/usr/bin/env bash
set -euo pipefail
if  (( $EUID == 0 ))
then
    echo "PLEASE DO NOT RUN THE SCRIPT AS ROOT"
    exit
else
    echo "############################################################"
    echo "### BEFORE RUNNING THE SCRIPT ENABLE MULTILIB REPOSITORY ###"
    echo "### FOR FASTER SETUP ALSO ENABLE PARALLEL DOWNLOADS ########"
    echo "############################################################"
    sleep 3
    echo ""
    echo "SYNCING DATABASE"
    echo ""
    sudo pacman -Sy
    echo "INSTALLING DRIVERS"
    echo ""
    sudo pacman -S --needed xf86-video-vesa mesa mesa-libgl
    clear
    printf "Intel Drivers ? : "
    read is_intel
    if [ "$is_intel" != "n" ]
    then
           sudo pacman -S --needed xf86-video-intel
           clear
    else
        echo ""
    fi
    printf "AMD Drivers ? : "
    read is_AMD
    if [ "$is_AMD" != "n" ]
    then
           sudo pacman -S --needed xf86-video-ati xf86-video-amdgp
           clear
    else
        echo ""
    fi
    printf "Nvidia Drivers ? : "
    read is_nvidia
    if [ "$is_nvidia" != "n" ]
    then
           sudo pacman -S --needed xf86-video-nouveau
           clear
    else
        echo ""
    fi
    clear
    echo "INSTALLING PARU ...."
    sudo pacman -S base-devel
    clear
    echo ""
    git clone https://aur.archlinux.org/paru.git
    clear
    cd paru
    makepkg -si
    clear
    cd $HOME
    echo "INSTALLING PACKAGES"
    sudo paru -S --needed --noconfirm xorg xorg-xinit nitrogen picom awesome kitty zsh neofetch vim base-devel bluez bluez-utils blueman alsa-utils pulseaudio pulseaudio-alsa pulseaudio-bluetooth fzf maim xclip tree exa bat fd zathura emacs dunst mpv dolphin ranger sxiv  zathura-pdf-mupdf neovim pamixer pandoc pavucontrol procs rofi starship textlive-latexextra fuse2 fuse3 ripgrep lightdm lightdm-webkit2-greeter ncdu wget emacs bandwhich acpi brave-bin figlet xcp tty-clock nerd-fonts-jetbrains-mono todoist-appimage notion-app ytop lightdm-webkit-theme-aether zip atom pup python-pip tmux 
    echo ""
    clear
    echo "INSTALLING DOOM EMACS"
    echo ""
    git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
    clear
    ~/.emacs.d/bin/doom install
    clear
    ~/.emacs.d/bin/doom sync
    echo "SETTING UP XORG"
    touch .xinitrc
    echo "exec awesome" >> .xinitrc
    echo "ENABLING SERVICES ...."
    sudo systemctl enable lightdm
    sudo systemctl enable bluetooth
    systemctl --system enable pulseaudio.service

    clear
    echo "#############################"
    echo "### ARCH INSTALL COMPLETE ###"
    echo "#############################"

fi
