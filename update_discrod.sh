#!/bin/sh

if [ "$(id -u)" != "0" ]; then echo "This script must be run as root";
  exit 1; 
fi

wget -O /tmp/discord.deb "https://discord.com/api/download/stable?platform=linux&format=deb"
dpkg --install /tmp/discord.deb
rm /tmp/discord.deb
