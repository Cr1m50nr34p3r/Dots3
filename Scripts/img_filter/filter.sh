#/usr/bin/env bash
alias ls=ls
declare -A ImageDb
sizes=$(identify -format '%f%w%h\n' $HOME/Wallpaper/*.jpg  )
num_img=$(echo $sizes | wc | awk '{print $2}')
num_img=$(echo $num_img | awk '{print $1-1}')
