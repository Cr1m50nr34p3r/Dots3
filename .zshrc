##############################          _              
###________| |__  _ __ ___ ###
###|_  / __| '_ \| '__/ __|###
####/ /\__ \ | | | | | (__ ###
####___|___/_| |_|_|  \___|###
##############################

################
### SETTINGS ###
################
setopt autocd extendedglob nomatch notify 
###############
### PLUGINS ###
###############
source $HOME/ZSH/Themes/dzhi-zsh-theme/dzhi.zsh-theme
source $HOME/ZSH/Plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
source $HOME/ZSH/Plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source $HOME/ZSH/Plugins/auto-notify/auto-notify.plugin.zsh
#############
### ALIAS ###
#############
# Bluetooth
alias blueon="bluetoothctl power on"
alias connect-airpods='bluetoothctl connect 7C:9A:1D:A0:40:2E'
# Wifi
alias wifi='nmcli device wifi'
alias connect-fiber='wifi connect "Bharat Garg_5G"'
alias lscon="nmcli connection show"
alias connect="nmcli connection up"
# fzf
alias fzi="paru -S --noconfirm \$(paru -Sl | awk '{print \$2}' |fzf -m --preview='paru -Si {} ' --preview-window=':hidden' --bind='?:toggle-preview')"
alias fzr="paru -Rsn \$(paru -Qe | awk '{print \$1}' | fzf -m --preview='paru -Qi {} ' --preview-window=':hidden' --bind='?:toggle-preview' )"
alias fzk="sudo kill \$(ps -eo pid,euser,comm,\%cpu,\%mem,etime | fzf -m --preview-window=':hidden' | awk '{print \$1}')"
# ls
alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.="exa -a | egrep '^\.'"                                     # show only dotfiles
# misc
alias cat='bat --style header --style rules --style snip --style changes --style header'
alias clock='tty-clock -cs'
alias doom='~/.emacs.d/bin/doom'
alias toggle-mic='amixer set Capture toggle'
alias mount-sd='sudo mount /dev/sda1 /mnt/SD'
alias get-token="cat ~/token.md | xclip -select clipboard"
alias cln="clear && neofetch"
alias srczsh="source ~/.zshrc"
alias mtrx="unimatrix -u 10 -l u"
alias encrypt="gpg --s2k-mode 3 --s2k-count 65011712 --s2k-digest-algo SHA512 --s2k-cipher-algo AES256"
alias cht="~/Scripts/CheatSheet/cheat.sh f"
alias dotfile="/usr/bin/git --git-dir=$HOME/Dotfiles --work-tree=$HOME"
alias mkusb="dd bs=4M if=$1 of=$2 conv=fsync oflag=direct status=progress"
#################
### FUNCTIONS ###
#################
fzd () {
	cd $HOME && cd $(fd -t d -H | fzf --tac --preview='tree -L 1 {}' --bind='?:toggle-preview')
}
fzv () {
	cd $HOME && sudo vim $(fd -t f -H | fzf --tac --preview='cat {}' --bind='?:toggle-preview') 
}
fzz () {
	fname=$(cd $HOME && fd -t f -H | fzf)
        zathura $fname &	
}
#
##################
### AUTO-START ###
#################
eval "$(starship init zsh)"
blueon
clear
neofetch
