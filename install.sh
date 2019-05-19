#!/bin/sh

sudo apt update
sudo apt install -y git curl tmux neovim

dir=$(pwd)

# Bash configuration
rm -f ~/.bash_profile
ln -s "$dir/.bash_profile" ~/.bash_profile

rm -f ~/.bashrc
ln -s "$dir/.bashrc" ~/.bashrc

# Neovim configuration
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.config/nvim
rm -f ~/.config/nvim/init.vim
ln -s "$dir/.vimrc" ~/.config/nvim/init.vim

# Tmux configuration
rm -f ~/.tmux.conf
ln -s "$dir/.tmux.conf" ~/.tmux.conf

# Touchpad configuration
sudo mkdir -p /etc/X11/xorg.conf.d
sudo rm -f /etc/X11/xorg.conf.d/90-touchpad.conf
sudo ln -s "$dir/90-touchpad.conf" /etc/X11/xorg.conf.d/90-touchpad.conf
