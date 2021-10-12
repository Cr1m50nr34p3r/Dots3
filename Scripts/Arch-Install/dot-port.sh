#!/usr/bin/env bash
set -euo pipefail
##################################################################################
### VARIABLES
# dot data
declare -A files
files['awesome']='.config/awesome'
files['rofi']='.config/rofi'
files['zathura']='.config/zathura'
files['nvim']='.config/nvim'
files['kitty']='.config/kitty'
files['alacritty']='.config/alacritty'
files['picom']='.config/picom'
files['starship']='.config/starship.toml'
files['zsh']='.zshrc .config/ZSH'
files['fish']='.config/fish'
files['emacs']='.doom.d'
files['nvim']='.config/nvim'
files['vim']='.vimrc'

### FUNCTIONS
word_count () {
    echo $1 | wc | awk '{print $2}'
}
####################################################################################

selected=$( echo ${!files[@]} | xargs -n 1 | fzf -m )
NumConfig=$( word_count "$selected" )
if (( $NumConfig > 1 ))
then
    for config in $selected
    do
        NumFile=$(word_count ${files[$config]})
        (( $NumFile == 1 )) && cp -r $1/${files[$config]} $HOME/${files[$config]} || echo $config | xargs -n 1 | xargs -I dir cp -r $1/dir $HOME/dir
    done
elif (( $NumConfig == 1 ))
then
    NumFile=$( word_count "${files[$selected]}" )
    (( $NumFile == 1 )) && cp -r $1/${files[$selected]} $HOME/${files[$selected]} || echo ${files[$selected]} | xargs -n 1 | xargs -I dir cp -r $1/dir $HOME

fi
