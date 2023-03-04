#! /usr/bin/bash

dmscripts_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )


# verify doas is installed, else display a notification and exit
if ! command -v doas &> /dev/null
then
    notify-send "doas is not installed, please install it and try again"
    exit
fi

# verify dmenu is installed, else display a notification and exit
if ! command -v dmenu &> /dev/null
then
    notify-send "dmenu is not installed, please install it and try again"
    exit
fi

echo $dmscripts_dir

# Choose a script
scripts=$(find $dmscripts_dir/scripts/*.sh)

# Remove the path from the script names
scripts=$(echo $scripts | sed "s|$dmscripts_dir/scripts/||g")

# Remove the .sh extension
scripts=$(echo $scripts | sed "s|.sh||g")

# Let the user choose a script
chosen_one=$(echo $scripts | dmenu -i -p "Choose a script:")


if [ -z "$chosen_one" ]; then
    exit 0
fi

script_path=$dmscripts_dir/scripts/$chosen_one.sh

# Execute the script
bash $script_path
