#!/usr/bin/env bash
set -euo pipefail
pushd $HOME
if  (( $EUID == 0 ))
then
    echo "PLEASE DO NOT RUN THE SCRIPT AS ROOT"
    popd
    exit
else
    
    ############################################################################################
    ### Variables
    # Drivers
    declare -A drivers
    drivers['intel']="xf86-video-intel"
    drivers['amd']="xf86-video-ati"
    drivers['nvidia']="xf86-video-noveau"
    # Packages
    packages=(
        xorg
        xorg-xinit
        nitrogen
        picom-jonaburg-git
        awesome
        kitty
        zsh
        neofetch
        vim
        base-devel
        bluez
        bluez-utils
        blueman
        alsa-utils
        pulseaudio
        pulseaudio-alsa
        pulseaudio-bluetooth
        fzf
        maim
        xclip
        tree
        exa
        bat
        fd
        zathura
        emacs
        dunst
        mpv
        dolphin
        ranger
        sxiv
        zathura-pdf-mupdf
        neovim
        pamixer
        pandoc
        pavucontrol
        procs
        rofi
        starship
        fuse2
        fuse3
        ripgrep
        lightdm
        lightdm-webkit2-greeter
        ncdu
        wget
        emacs
        bandwhich
        acpi
        brave-bin
        figlet
        xcp
        tty-clock
        nerd-fonts-jetbrains-mono
        todoist-appimage
        notion-app
        ytop
        lightdm-webkit-theme-aether
        zip
        atom
        pup
        python-pip
        tmux

    )
    ### FUNCTIONS
    install_driver () {

        printf "$1 drivers: "
        read is_driver
        case $is_driver in
        "y" | "Y" | "")
            paru -S --noconfirm --needed ${drivers[$1]}
            clear
            ;;
        "n" | "N")
            echo "Not Installing $1 Drivers"
            ;;
        *)
            echo "please enter Y/n"
            install_driver $1
            ;;
        esac

    }

    ############################################################################################
    echo "############################################################"
    echo "### BEFORE RUNNING THE SCRIPT ENABLE MULTILIB REPOSITORY ###"
    echo "### FOR FASTER SETUP ALSO ENABLE PARALLEL DOWNLOADS ########"
    echo "############################################################"
    sleep 3
    echo ""
    echo "SYNCING DATABASE"
    echo ""
    sudo pacman -Sy
    echo "INSTALLING PARU ...."
    sudo pacman -S --noconfirm --needed  base-devel
    clear
    echo ""
    git clone https://aur.archlinux.org/paru.git
    clear
    pushd paru
    makepkg -si
    clear
    popd

    echo "INSTALLING DRIVERS"
    echo ""
    sudo paru -S --needed --noconfirm xf86-video-vesa mesa mesa-libgl
    clear
    for driver in "${!drivers[@]}"
    do
        install_driver $driver
    done
    echo "INSTALLING OTHER PACKAGES"
    paru -S --needed --noconfirm "${packages[@]}"
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
    clear
    echo "#############################"
    echo "### ARCH INSTALL COMPLETE ###"
    echo "#############################"

fi
popd
