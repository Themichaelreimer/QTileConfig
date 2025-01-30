#!/bin/bash

# Copy files to necessary places
sudo mkdir /opt/qtile
sudo cp entry.sh /opt/qtile/
sudo cp requirements.txt /opt/qtile/
sudo cp qtile.desktop /usr/share/xsessions/

# Install packages
sudo apt install python3-pip python3-venv
cd /opt/qtile
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt


