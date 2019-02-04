#!/bin/bash

# Albert Launcher
sudo add-apt-repository -y ppa:nilarimogard/webupd8 && sudo apt-get update && sudo apt-get install -y albert && echo -e "[Desktop Entry]\nName=Albert\nGenericName=\nComment=\nExec=albert\nTerminal=false\nType=Application\nIcon=albert\nCategories=\nStartupNotify=false" > ~/.config/autostart/albert.desktop

# Keepass XC
sudo add-apt-repository -y ppa:phoerious/keepassxc && sudo apt-get update && sudo apt install -y keepassxc

# Slack
sudo snap install slack --classic && sudo cp /snap/slack/current/usr/share/pixmaps/slack.png /usr/share/pixmaps/ && sudo cp /snap/slack/current/usr/share/applications/slack.desktop /usr/share/applications/

# CLion
sudo snap install clion --classic && mkdir -p ~/.local/share/icons && cp /snap/clion/current/bin/clion.png ~/.local/share/icons/ && echo -e "[Desktop Entry]\nEncoding=UTF-8\nVersion=1.0\nType=Application\nName=CLion\nIcon=clion.png\nExec=bash -c \"source /opt/ros/kinetic/setup.bash; clion\" %f\nStartupWMClass=jetbrains-clion" > ~/.local/share/applications/clion.desktop

# PyCharm
sudo snap install pycharm-community --classic && mkdir -p ~/.local/share/icons && cp /snap/pycharm-community/current/bin/pycharm.png ~/.local/share/icons/ && echo -e "[Desktop Entry]\nEncoding=UTF-8\nVersion=1.0\nType=Application\nName=PyCharm\nIcon=pycharm.png\nExec=bash -c \"source /opt/ros/kinetic/setup.bash; pycharm-community\" %f\nStartupWMClass=jetbrains-pycharm-ce" > ~/.local/share/applications/pycharm.desktop

# Visual Studio Code
sudo snap install vscode --classic && sudo cp /snap/vscode/current/usr/share/pixmaps/code.png /usr/share/pixmaps && sudo cp /snap/vscode/current/usr/share/applications/code.desktop /usr/share/applications/

# Mailspring
sudo snap install mailspring && sudo cp /snap/mailspring/current/usr/share/pixmaps/mailspring.png /usr/share/pixmaps &&  sudo cp /snap/mailspring/current/usr/share/applications/mailspring.desktop /usr/share/applications/

# Vivaldi
wget -qO- http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add - && sudo add-apt-repository "deb [arch=i386,amd64] http://repo.vivaldi.com/stable/deb/ stable main" && sudo apt update && sudo apt install -y vivaldi-stable

# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' && sudo apt update && sudo apt install -y google-chrome-stable

# Dropbox
echo "deb http://linux.dropbox.com/ubuntu xenial main" | sudo tee -a /etc/apt/sources.list && sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 1C61A2656FB57B7E4DE0F4C1FC918B335044912E && sudo apt update && sudo apt install -y dropbox
