#!/bin/bash

# Albert Launcher
sudo add-apt-repository -y ppa:nilarimogard/webupd8 && sudo apt-get update && sudo apt-get install -y albert && echo -e "[Desktop Entry]\nName=Albert\nGenericName=\nComment=\nExec=albert\nTerminal=false\nType=Application\nIcon=albert\nCategories=\nStartupNotify=false" > ~/.config/autostart/albert.desktop

# Keepass XC
sudo add-apt-repository ppa:phoerious/keepassxc && sudo apt-get update && sudo apt install -y keepassxc

# Slack
sudo snap install slack --classic

# CLion
sudo snap install clion --classic && cp /snap/clion/current/bin/clion.png ~/.local/share/icons && echo -e "[Desktop Entry]\nEncoding=UTF-8\nVersion=1.0\nType=Application\nName=CLion\nIcon=clion.png\nExec=bash -c \"source /opt/ros/kinetic/setup.bash; clion\" %f\nStartupWMClass=jetbrains-clion" > ~/.local/share/applications/clion.desktop

# PyCharm
sudo snap install pycharm-community --classic && cp /snap/pycharm-community/current/bin/pycharm.png ~/.local/share/icons && echo -e "[Desktop Entry]\nEncoding=UTF-8\nVersion=1.0\nType=Application\nName=PyCharm\nIcon=pycharm.png\nExec=bash -c \"source /opt/ros/kinetic/setup.bash; pycharm-community\" %f\nStartupWMClass=jetbrains-pycharm-ce" > ~/.local/share/applications/pycharm.desktop

# Visual Studio Code  
sudo snap install vscode --classic && cp /snap/vscode/current/usr/share/pixmaps/code.png ~/.local/share/icons && echo -e "[Desktop Entry]\nName=Visual Studio Code\nComment=Code Editing. Redefined.\nGenericName=Text Editor\nExec=code --unity-launch %F\nIcon=code.png\nType=Application\nStartupNotify=true\nStartupWMClass=Code\nCategories=Utility;TextEditor;Development;IDE;\nMimeType=text/plain;inode/directory;\nActions=new-empty-window;\nKeywords=vscode;\n\n[Desktop Action new-empty-window]\nName=New Empty Window\nExec=code --new-window %F\nIcon=code.png" > ~/.local/share/applications/code.desktop

# Mailspring
sudo snap install mailspring && cp /snap/mailspring/current/usr/share/pixmaps/mailspring.png ~/.local/share/icons && echo -e "[Desktop Entry]\nName=Mailspring\nComment=The best email app for people and teams at work\nGenericName=Mailspring\nExec=mailspring %U\nIcon=mailspring.png\nType=Application\nStartupNotify=true\nStartupWMClass=Mailspring\nCategories=GNOME;GTK;Network;Email;\nKeywords=email;internet;\nMimeType=x-scheme-handler/mailto;x-scheme-handler/mailspring;" > ~/.local/share/applications/mailspring.desktop

# Vivaldi
wget -qO- http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add - && sudo add-apt-repository "deb [arch=i386,amd64] http://repo.vivaldi.com/stable/deb/ stable main" && && sudo apt update && sudo apt install -y vivaldi-stable

# Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - && sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' && sudo apt update && sudo apt install -y google-chrome-stable