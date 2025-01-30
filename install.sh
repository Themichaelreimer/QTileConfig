#!/bin/bash

# Install prerequisites
sudo apt install python3 python3-pip3 python3-venv kitty rofi flameshot

# Copy files to necessary places
# qtile itself is installed to /opt/qtile; it's config is installed to ~/.config
sudo mkdir /opt/qtile
sudo cp entry.sh /opt/qtile/
sudo cp requirements.txt /opt/qtile/
sudo cp qtile.desktop /usr/share/xsessions/

sudo cp -r kitty/ ~/.config/
sudo cp -r rofi/ ~/.config/
sudo cp -r qtile/ ~/.config/
sudo cp -r flameshot/ ~/.config/

# Install qtile
cd /opt/qtile
sudo chown -R $USER
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt


