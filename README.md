```
#!/bin/sh

cd ~/
rm -rf .oh-my-zsh .zshrc
pacman --noconfirm -Sy git stow vim neovim neofetch starship starship zsh zsh-autosuggestions zsh-syntax-highlighting

echo y | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

rm -rf server-dotfiles .oh-my-zsh .zshrc
mkdir -p .config

git clone --recurse-submodules https://github.com/Aidenable/server-dotfiles.git 
cd ~/server-dotfiles && stow --restow */ && cd ~/
```
