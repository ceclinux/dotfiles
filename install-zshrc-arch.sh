sudo pacman -Syy
sudo pacman -S --needed --noconfirm git yay hub exa zsh bat
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
yay -S --needed --noconfirm rbenv rmtrash autojump
git clone https://github.com/ceclinux/custom_omz_plugins
cp -rf custom_omz_plugins/* ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
yes | ~/.fzf/install

