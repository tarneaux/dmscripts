# dmscripts

This is my collection of little bash scripts that use dmenu to make your life easier.
To install them:
- Make sure `dmenu` is installed
- Clone this repo (`git clone https://github.com/tarneaux/dmscripts`)
- Map some key (like super+d) to run this script in your window manager, desktop environment, etc.


## Troubleshooting

If you run into any issues:
- The script you are running might be using sudo and so require its passwordless config. This is something I like to have enabled on my computer and so I have not implemented any way to login on the background-running script. Although there are some risks in terms of security (privilege escalation) you can see how to enable passwordless sudo [here](https://www.ibm.com/docs/en/zscc/1.1.0?topic=eylzsdg-enable-passwordless-sudo-access-your-linux-user-id).
