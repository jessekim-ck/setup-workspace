# Basic packages
sudo apt-get update
sudo apt-get install vim git curl openssh-server

# The Ultimate vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Oh-my-zsh
sudo apt-get install zsh
sudo curl -L http://install.ohmyz.sh | sh
sudo chsh $USER -s /usr/bin/zsh

echo "Please reboot to apply oh-my-zsh."
