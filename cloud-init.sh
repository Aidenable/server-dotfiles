#!/bin/sh

echo "Server Installing..."

cd ~/ && rm -rf .oh-my-zsh .zshrc .tmux.conf
pacman --noconfirm -Sy git stow vim neovim neofetch starship starship zsh tmux

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si && rm -rf yay


echo y | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

rm -rf ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

rm -rf ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting


cd ~/ && rm -rf server-dotfiles _ .zshrc .config .p10k.zsh
mkdir -p .config

git clone --recurse-submodules https://github.com/Aidenable/server-dotfiles.git _
cd ~/_ && stow --restow */ && cd ~/
