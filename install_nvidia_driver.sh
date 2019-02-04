sudo apt remove nvidia*
sudo apt remove cuda*
sudo apt autoremove

sudo service lightm stop
pkill Xorg

sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo apt update
sudo apt install nvidia-410