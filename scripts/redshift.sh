#! /usr/bin/bash

temps=(2 3 3 4 5 6)

print_temps() {
	for temp in ${temps[@]}; do
		echo ${temp}500
	done
	echo reset
}


temp=$(print_temps | dmenu -i -p "Color temp: ")

if [ -z "$temp" ]; then
    exit 0
fi

if [ "$temp" = "reset" ]; then
    redshift -x
    exit 0
fi

redshift -O $temp
