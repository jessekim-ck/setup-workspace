# Referenced to
# https://medium.com/@exesse/cuda-10-1-installation-on-ubuntu-18-04-lts-d04f89287130

# Remove any NVIDIA traces you may have
sudo rm /etc/apt/sources.list.d/cuda*
sudo apt remove --autoremove nvidia-cuda-toolkit
sudo apt remove --autoremove nvidia-*

# Setup the correct CUDA PPA on your system
sudo apt update
sudo add-apt-repository ppa:graphics-drivers
sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
sudo bach -c 'echo "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64 /" > /etc/apt/sources.list.d/cuda.list'
sudo bach -c 'echo "deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64 /" > /etc/apt/sources.list.d/cuda_learn.list'

# Install CUDA 10.1 packages
sudo apt update
sudo apt install cuda-10-1
sudo apt install libcudnn7

# Set PATH for cuda 10.1 installation
echo '' >> ~/.profile
echo 'if [ -d "/usr/local/cuda-10.1/bin" ]; then' >> ~/.profile
echo '    export PATH=/usr/local/cuda-10.1/bin${PATH:+:${PATH}}' >> ~/.profile
echo '    export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}' >> ~/.profile
echo 'fi' >> ~/.profile

echo "Please reboot the machine."
