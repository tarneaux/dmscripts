#! /usr/bin/bash

dmscripts_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


# verify dmenu is installed, else display a notification and exit
if ! command -v dmenu &> /dev/null
then
    notify-send "dmenu is not installed, please install it and try again"
    exit
fi

echo $dmscripts_dir

chosen_one=$(find $dmscripts_dir/scripts/ -type f | sed "s|$dmscripts_dir/scripts/||g" | sed "s|.sh||g" | dmenu)


if [ -z "$chosen_one" ]; then
    exit 0
fi

script_path=$dmscripts_dir/scripts/$chosen_one.sh

# Execute the script
bash $script_path
