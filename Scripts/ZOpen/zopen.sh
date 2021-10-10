#!/usr/bin/env bash
case $1 in
    'r' | 'R')
        zathura $( find $HOME -iname *.pdf | rofi -dmenu -p "Select file: " ) &
            ;;
    'f' | 'F' | '' )

	file1=$( find $HOME -iname *.pdf | fzf --prompt="Select file: " --preview="cat {}" --bind='?:toggle-preview' --tac )
	zathura $file1 &
        ;;
esac
