##############################          _              
###________| |__  _ __ ___ ###
###|_  / __| '_ \| '__/ __|###
####/ /\__ \ | | | | | (__ ###
####___|___/_| |_|_|  \___|###
##############################

################
### SETTINGS ###
################
## Global Variables
export MAKEFLAGS="-j$(( $nprocs+1 ))"
## Options
setopt extendedglob
setopt autocd              # change directory just by typing its name
setopt correct            # auto correct mistakes
setopt interactivecomments # allow comments in interactive mode
setopt magicequalsubst     # enable filename expansion for arguments of the form ‘anything=expression’
setopt nonomatch           # hide error message if there is no match for the pattern
setopt notify              # report the status of background jobs immediately
setopt numericglobsort     # sort filenames numerically when it makes sense
setopt promptsubst         # enable command substitution in prompt
WORDCHARS=${WORDCHARS//\/} # Don't consider certain characters part of the word
# hide EOL sign ('%')
PROMPT_EOL_MARK=""

# History
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=2000
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
#setopt share_history         # share command history data
# completion
autoload -Uz compinit
compinit -d ~/.cache/zcompdump
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' rehash true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'
##############
### PLUGINS ###
###############
source $HOME/.config/ZSH/Themes/dzhi-zsh-theme/dzhi.zsh-theme
source $HOME/.config/ZSH/Plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history)
if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    . ~/.config/zsh-autosuggestions/zsh-autosuggestions.zsh
    # change suggestion color
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#999'
fi


source $HOME/.config/ZSH/Plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source $HOME/.config/ZSH/Plugins/auto-notify/auto-notify.plugin.zsh
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
alias fzi="paru -S --needed --noconfirm \$(paru -Sl | awk '{print \$2}' |fzf -m --preview='paru -Si {} ' --preview-window=':hidden' --bind='?:toggle-preview')"
alias fzr="paru -Rsn \$(paru -Qe | awk '{print \$1}' | fzf -m --preview='paru -Qi {} ' --preview-window=':hidden' --bind='?:toggle-preview' )"
alias fzk="sudo kill \$(ps -eo pid,euser,comm,\%cpu,\%mem,etime | fzf -m --preview-window=':hidden' | awk '{print \$1}')"
alias frm="~/Scripts/fzrm/frm.sh f"
# ls
alias ls='exa -l --color=always --group-directories-first --icons' # preferred listing
alias la='exa -la --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.="exa -a | egrep '^\.'"                                     # show only dotfiles
# misc
alias cat='bat --style header --style rules --style snip --style changes --style header'
alias clock='tty-clock -cs'
alias doom='~/.emacs.d/bin/doom'
alias toggle-mic='amixer set Capture toggle'
alias mount-sd='sudo mount /dev/sda1 /mnt/SD'
alias get-token="alias cat=cat && cat ~/.token.md  | tr '\n' ' ' | sed 's/ //g' | xclip -select clipboard"
alias cln="clear && neofetch"
alias srczsh="source ~/.zshrc"
alias mtrx="unimatrix -u 10 -l u"
alias encrypt="gpg --s2k-mode 3 --s2k-count 65011712 --s2k-digest-algo SHA512 --cipher-algo AES256 --symmetric --digest-algo sha512 --compress-algo none -z 0 --force-mdc --pinentry-mode loopback --armor --no-symkey-cache --output $1.enc $1"
alias decrypt="gpg --decrypt --pinentry-mode loopback --armor "
alias cht="~/Scripts/CheatSheet/cheat.sh f"
alias dotfile="/usr/bin/git --git-dir=$HOME/Dotfiles --work-tree=$HOME"
alias mkusb="dd bs=4M if=$1 of=$2 conv=fsync oflag=direct status=progress"
alias clogs='[[ ! -e ~/.dent/$(date +%d-%m-%y).md ]] && sudo echo "# $(date +%d-%m-%y )" > ~/.dent/$( date +%d-%m-%y ).md'
alias probe_wifi="sudo modprobe -r mwifiex_pcie ; sudo modprobe mwifiex_pcie"
alias pacunlock="sudo rm /var/lib/pacman/db.lck"
alias tdate="timedatectl | grep Local | sed 's/ *Local time: \(.*\) .*/Today: \1/g' "
alias rofi="rofi -no-config -no-lazy-grab -show drun -modi drun -theme ~/.config/rofi/launcher.rasi"
# VBox
alias vbox="VBoxManage"
alias startvm="vbox startvm "
#################
### FUNCTIONS ###
#################
fzd () {
	 cd $(find $HOME . -type d| fzf --tac --preview='tree -L 1 {}' --bind='?:toggle-preview')
}
fzv () {
	 sudo vim $(find $HOME . -type f | fzf --tac --preview='cat {}' --bind='?:toggle-preview') 
}
fzo () {
	 xdg-open $(find $HOME . -type f  | fzf --preview="cat {}" --tac --prompt="Select file: " --bind="?:toggle-preview")
}
i () {
	paru -S $(paru -F $1 | head -n 1 | cut -d '/' -f2 | cut -d ' ' -f1)
}
vmoff () {
	VBoxManage controlvm $1 poweroff
}
##################
### AUTO-START ###
#################
blueon
clear
neofetch
eval "$(starship init zsh)"
#############################
### DONT TRY THIS AT HOME ###
#############################
alias destroy-system=":(){:|:};"

