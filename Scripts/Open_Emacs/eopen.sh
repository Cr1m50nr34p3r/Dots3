#!/usr/bin/env bash
case $1 in
    'r' | 'R')
        emacs $( find $HOME -type f | rofi -dmenu -p "Select file: " ) &
            ;;
    'f' | 'F' | '' )

	file1=$( find $HOME -type f | fzf --prompt="Select file: " --preview="cat {}" --bind='?:toggle-preview' --tac )
	emacs $file1 &
        ;;
esac
