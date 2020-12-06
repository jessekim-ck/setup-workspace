# Setup Workspace
Scripts for setting deep learning development environment on an Ubuntu machine. It would install cuda10.1, docker and required toolkit, driver and packages. It was originally targetted for Ubuntu 18.04, but it also works well for Ubuntu 20.04 with GPUs compatible with cuda10.1.

### install_utils.sh
Script for installing and setting up basic packages.

### install_nvidia_cuda.sh
Script for installing cuda 10.1 including required drivers and packages.

### install_docker.sh
Script for installing and setting up docker.

### Usage
You just execute the three commands below in order.

~~~
sudo sh install_utils.sh
sudo sh install_nvidia_cuda.sh
sudo sh install_docker.sh
~~~
