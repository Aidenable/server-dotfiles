```
#!/bin/sh

echo "Server Installing..."

cd ~/ && rm -rf .oh-my-zsh .zshrc
pacman --noconfirm -Sy git stow vim neovim neofetch starship starship zsh tmux


echo y | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)

rm -rf ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

rm -rf ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting


rm -rf server-dotfiles .zshrc .config
mkdir -p .config

git clone --recurse-submodules https://github.com/Aidenable/server-dotfiles.git 
cd ~/server-dotfiles && stow --restow */ && cd ~/
```
