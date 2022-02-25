#!/bin/bash
run () {
    (setsid "$@" &)
}
find "$HOME" -type f
if (( $ROFI_RETV == 1 ))
then
    if echo x"$@" | grep '*\.pdf'
    then
        notify-send "wqnk"
        coproc (zathura x"$@"   > /dev/null 2>1) 
        exit  
    fi
fi
exit
