#!/usr/bin/env bash
set -euo pipefail
case $1 in
    'f' | 'F')

        file1=$( find . $HOME | fzf -m --preview=" cat {} || clear && ls {} " --prompt="Select File/Directory: " --bind="?:toggle-preview" | sed 's/^\./\/home\/r3dbl4d3/g' )
        [[ -f $file1 ]] && rm -i $file1 || rm -rf $file1
        ;;
    'r' |'R')
        file1=$( find . $HOME | rofi -dmenu -normal-window | sed 's/^\./\/home\/r3dbl4d3/g' )
        [[ -f $file1 ]] && rm  $file1 || rm -rf $file1
        ;;
    '')
        file1=$( find . $HOME | fzf -m --preview=" ls {} " --prompt="Select File/Directory: " --bind="?:toggle-preview" | sed 's/^\./\/home\/r3dbl4d3/g' )
        [[ -f $file1 ]] && rm -i $file1 || rm -rfi $file1
        ;;
    *)
        echo "Please supply valid argument"
        ;;
esac
