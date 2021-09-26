#!/bin/sh
printf '$ '
read is_swap
if (("$is_swap"=="n"))
then
    echo "Not making swap partition and moving on"
else
    printf "Name of Swap Partition: "
    read swap_part
fi
