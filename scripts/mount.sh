#!/bin/sh

disk=$(lsblk --noheadings --output NAME,FSTYPE --raw | grep -E "\w+\s+\w+" | cut -d " " -f 1 | dmenu -i -p "Disk to mount: ")

if [ -z "$disk" ]; then
    exit 0
fi

mountpoint=$(mktemp -d)

alacritty -e sh -c "sudo mount /dev/$disk $mountpoint ; cd $mountpoint ; $SHELL ; cd ~ ; sudo umount $mountpoint || sleep 10" &
