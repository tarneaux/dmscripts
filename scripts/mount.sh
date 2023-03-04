#! /usr/bin/bash

disk=$(lsblk --noheadings --output NAME,FSTYPE --raw | grep -E "\w+\s+\w+" | cut -d " " -f 1 | dmenu -i -p "Disk to mount: ")

if [ -z "$disk" ]; then
    exit 0
fi

mountpoint=$(mktemp -d)

doas mount /dev/$disk $mountpoint
alacritty --working-directory $mountpoint
doas umount $mountpoint || notify-send "Unmount failed on term exit, remember to unmount disk manually"
