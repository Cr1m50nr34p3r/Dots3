#!/bin/bash
declare -A files
files['zsh']='ZSH .zshrc'
files['emacs']='.doom.d'
word_count () {
    echo $1 | wc
}
selected=$( echo ${!files[@]} | xargs -n 1 | fzf -m )
word_count "$selected"
