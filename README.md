#!/bin/sh

cd ~/
mkdir -p .config

rm -rf .oh-my-zsh .zshrc
pacman --noconfirm -Sy git stow vim neovim neofetch starship starship zsh zsh-autosuggestions zsh-syntax-highlighting

echo y | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

rm -rf server-dotfiles
git clone --recurse-submodules https://github.com/Aidenable/server-dotfiles.git 

rm -rf .oh-my-zsh .zshrc
cd ~/server-dotfiles && stow --restow */
cd ~/
