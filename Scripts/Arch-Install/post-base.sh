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
   # USERNAME
   username="$USER"
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
        connman
        ntfs-3g
	unimatrix
	pyenv
	xdotool
	cmake 
	rhash
	jsoncpp
	dart
	nim
	#nimsuggest-git
	python-black
	python-pyflakes
	python-pipenv
	python-nose
	python-pytest
	shellcheck
	imagemagick
	#mbsync
	#mu
	dash
    )
    pip_packages=(
	    jedi
	    autopep8
	    flake8
	    ipython
	    importmagic
	    yapf
	    black
	    pyflakes
	    isort
	    pipenv
	    nose
	    pytest
	    )
    ### FUNCTIONS
    install_driver () {

        printf "$1 drivers: "
        read is_driver
        case $is_driver in
        "y" | "Y" | "")
            paru -S --noconfirm --needed ${drivers[$1]}
	    sleep 1
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
    echo "### ( SET PARALLEL TO $(( $(nproc)+1 )) ) #################"
    echo "############################################################"
    sleep 3
    clear
    echo "########################"
    echo "### SYNCING DATABASE ###"
    echo "########################"
    echo ""
    sudo pacman -Syy
    clear
    printf "Update Mirrors (THIS MAY TAKE AN HOUR OR 2 ) : "
    read up_mirror
    case $up_mirror in
	    'y' | 'Y' )
		    clear
		    mirror_msg () {
    		    	echo "########################"
		    	echo "### UPDATING MIRRORS ###"
    		    	echo "########################"
			echo ""
		}
		    mirror_msg
		    sudo pacman -S reflector rsync
		    clear
		    mirror_msg
		    sudo reflector  --sort rate --threads $(( $( nproc ) + 1 ))  -l 200 --save /etc/pacman.d/mirrorlist
		    clear
		    ;;
	    *)
		    echo "NOT UPDATING MIRRORS AND CONTINUING"
		    clear
		    ;;
   esac
   paru_msg () {
    	echo "#######################"
    	echo "### INSTALLING PARU ###"
    	echo "#######################"
	echo ""
   }
   paru_msg
   sudo pacman -S --noconfirm --needed  base-devel
   clear
   paru_msg
   git clone https://aur.archlinux.org/paru.git
   clear
   paru_msg
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
   echo "INSTALLING PIP PACKAGES"
   pip install "${pip_packages[@]}"
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
   sudo systemctl enable connman
   clear
   echo "########################################"
   echo "### SETTING UP CONNMAN RESUME SERVCE ###"
   echo "########################################"

   sudo touch /etc/systemd/system/connman-resume.service
   echo "switching to root user..."
   sudo su
   echo "[Unit]" >>  /etc/systemd/system/connman-resume.service
   echo "Description=Restart connman on resume." >>  /etc/systemd/system/connman-resume.service
   echo "After=suspend.target" >>  /etc/systemd/system/connman-resume.service
   echo "" >>  /etc/systemd/system/connman-resume.service
   echo "[Service]" >>  /etc/systemd/system/connman-resume.service
   echo "Type=oneshot" >>  /etc/systemd/system/connman-resume.service
   echo "RemainAfterExit=no" >>  /etc/systemd/system/connman-resume.service
   echo "ExecStart=/usr/bin/systemctl restart connman" >>  /etc/systemd/system/connman-resume.service
   echo "ExecStart=/usr/bin/echo connman-resume: Successfully restarted connman" >>  /etc/systemd/system/connman-resume.service
   echo "" >>  /etc/systemd/system/connman-resume.service
   echo "[Install]" >>  /etc/systemd/system/connman-resume.service
   echo "WantedBy=suspend.target" >>  /etc/systemd/system/connman-resume.service
   echo "switching back to $username"
   su $username
   sudo systemctl enable connman-resume
   echo "#############################"
   echo "### ARCH INSTALL COMPLETE ###"
   echo "#############################"
fi
popd
