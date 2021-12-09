#!/usr/bin/env sh

cwd=$(pwd)

if [ SPIN ]; then
  sudo apt purge neovim
  sudo add-apt-repository -y ppa:neovim-ppa/stable
  sudo apt update
fi

sudo apt-get install -y ripgrep httpie rsync tig jq

cat zshrc >> ~/.zshrc
cat gitconfig >> ~/.gitconfig
cat gitignore >> ~/.gitignore

ln -s -f $cwd/git_template ~/.git_template
ln -s -f $cwd/ripgreprc ~/.ripgreprc
ln -s -f $cwd/tigrc ~/.tigrc

git clone --depth 1 git://github.com/larissa/vim-configs.git ~/.vim
cd ~/.vim
./install.sh
cd $cwd
