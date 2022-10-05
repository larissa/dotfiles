#!/usr/bin/env sh

cwd=$(pwd)

if ! [ $SPIN ]; then
  sudo apt-get install -y neovim ripgrep httpie rsync tig jq
fi

# configurations
cat zshrc >> ~/.zshrc
cat gitconfig >> ~/.gitconfig
cat gitignore >> ~/.gitignore

ln -s -f $cwd/git_template ~/.git_template
ln -s -f $cwd/ripgreprc ~/.ripgreprc
ln -s -f $cwd/tigrc ~/.tigrc
ln -s -f $cwd/tmux.conf ~/.tmux.conf

# vim install
git clone --depth 1 https://github.com/larissa/vim-configs.git ~/.vim
cd ~/.vim
./install.sh
cd $cwd

# fish install
mkdir -p ~/.config/fish/
if [ -s ~/.config/fish/conf.d ]; then
  rm -fr ~/.config/fish/conf.d
fi
ln -s -f $cwd/fish/conf.d ~/.config/fish/conf.d
if [ -s ~/.config/fish/functions ]; then
  rm -fr  ~/.config/fish/functions
fi
ln -s -f $cwd/fish/functions ~/.config/fish/functions
# ./install.fish
