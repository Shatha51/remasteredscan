#!/bin/bash
nocolor="\033[0m"
red="\033[0;31m"
blue="\033[0;34m"
yellow="\033[0;33m"
purple="\033[0;35m"
domain=$1
cat << "EOF"

_____                  _____ __
|  __ \                | ____/_ |
| |  | |_   _ _ __ __ _| |__  | |
| |  | | | | | '__/ _` |___ \ | |
| |__| | |_| | | | (_| |___) || |
|_____/ \__,_|_|  \__,_|____/ |_|

         .
        / \
       /   \
      /  |  \
      |  |  |
      |  |  |
      |  |  |
      |  |  |
      |  |  |
      |  |  |
      |  |  |
      |  |  |
      |  |  |
      |  |  |
      |  |  |
      |  |  |
      |  |  |
      |  |  |
      |  |  |
      |  |  |
 ____/|  |  |\____
/____/\___/\____/ )
(_______________)/
      |/////|
      |/////|
      |/////|
      |/////|
      |/////|
      |/////|
      |/////|
     (_______)
this is the same tool of ourfirstscan but this is remastered I hope you like it Buddy
BY : Dura51

EOF

if [ $(whoami) != "root" ]; then
echo -e "${red}Dude! you have to be root${nocolor}"
exit
else
if [ -z $domain ]; then
echo -e "${red}Come on dude! where is your domain? enter your target domain${nocolor}"
else
echo -e "${yellow}.........[I am working on your $domain]........."
gnome-terminal -e "ping -c15 $domain"
sleep
touch urscan.txt && gnome-terminal -e "tail -F urscan.txt"
nmap -sS -O -oX nmap.xml $domain > urscan.txt
echo -e "${purple}.........[The End]........."
fi
fi
