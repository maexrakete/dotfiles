# echo '### Install Packages'

sudo pacman -S - < pacman-list.pkg
xargs <aur-list.pkg yaourt -S --noconfirm

# #################################################

echo '### Install Powerline Fonts'

# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

##################################################

echo '### Install oh-my-zsh'

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
source ~/.zshrc;

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

##################################################

echo '### Stow configs'

mv ~/.i3 ~/.i3.pre-stow
stow i3 -t ~

mv ~/.emacs.d ~/.emacs.d.pre-stow
stow emacs -t ~

mv ~/.zshrc ~/.zshrc.pre-stow
stow zsh -t ~

stow tmux -t ~
stow dunst -t ~
stow services -t ~
systemctl --user enable ssh-agent
systemctl --user start ssh-agent
echo 'AddKeysToAgent  yes' >> ~/.ssh/config

##################################################
echo '### Setup NVM'

nvm install node
