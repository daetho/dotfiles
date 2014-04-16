#!/usr/bin/env bash

echo "Back-up existing dotfiles to ~/.dotfiles_old"

rm -rf ~/.dotfiles_old
mkdir ~/.dotfiles_old

mv ~/.bashrc ~/.dotfiles_old
mv ~/.vimrc ~/.dotfiles_old
mv ~/.zshrc ~/.dotfiles_old

echo "Symlinking files"
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc

echo "Finished"
