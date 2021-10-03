#!/usr/bin/env bash

####################################################################################################
### VARIABLES
name="$(date +%d-%m-%y).md"
LogDir="$HOME/.dlogs"

### FUNCTIONS
start () {
    i=0
    while true
    do
          clear
          tput cup 0 0
          printf "%2d" $i
          i=$($i+1)
    done
}
### OPTIONS
### MAIN
start
## APPEND
## READ
