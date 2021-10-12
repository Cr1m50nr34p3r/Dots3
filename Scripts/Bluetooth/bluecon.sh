#!/usr/bin/env bash
powered=$( bluetoothctl show | grep Powered | sed 's/ *Powered: \(.*\)/\1/g' | awk '{print $1}' )
[[ $powered == 'no' ]] && bluetoothctl power on
connect_flag=''
disconnect_flag=''
launcher=''
while getopts cdl: flag
do
    case "${flag}" in
        c) connect_flag=true ;;
        d) disconnect_flag=true ;;
        l) launcher=${OPTARG};;
    esac
done

case $launcher in
    'f' | 'F' | '')
        device=$( bluetoothctl paired-devices | fzf --prompt='Select Device: ' | cut -d ' ' -f2 )
        ;;
    'r' | 'R')

        device=$( bluetoothctl paired-devices | rofi -dmenu -p 'Select Device: ' | cut -d ' ' -f2 )
        ;;
esac

[[ -n $disconnect_flag ]] && bluetoothctl disconnect $device || bluetoothctl connect $device
