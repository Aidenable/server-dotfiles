```
#!/bin/sh

pacman --noconfirm -Sy git stow vim neovim neofetch starship zsh zsh-autosuggestions zsh-syntax-highlighting

rm -rf arch-dotfiles
git clone --recurse-submodules https://github.com/Aidenable/server-dotfiles.git && cd ~/server-dotfiles && stow --restow */

echo y | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
