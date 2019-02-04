wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.2.148-1_amd64.deb

sudo dpkg -i cuda-repo-ubuntu1604_9.2.148-1_amd64.deb
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
sudo apt update
sudo apt install cuda-9-2

echo "export PATH=/usr/local/cuda-9.2/bin:\${PATH}" | tee -a ~/.bashrc
echo "export LD_LIBRARY_PATH=/usr/local/cuda-9.2/lib64:\${LD_LIBRARY_PATH}" | tee -a ~/.bashrc
