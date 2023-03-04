# dmscripts

This is my collection of little bash scripts that use dmenu to make your life easier.
To install them:
- Make sure `dmenu` is installed
- Clone this repo (`git clone https://github.com/tarneaux/dmscripts`)
- Map some key (like super+d) to run this script in your window manager, desktop environment, etc.


## Troubleshooting

If you run into any issues:
- The script you are running might be using doas (a better alternative to sudo) and so require its passwordless config. Enable passwordless doas in the config file to be able to use the script.
