#!/bin/bash

# install script aimed for osx

echo 'installing ack'
brew install ack

if [ ! -d ~/.vim/bundle/vundle ]; then
  echo 'adding vundle - vim plugins package manger'
  git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi

echo 'linking vimrc and ackrc'
ln -sf ~/.vim/vimrc ~/.vimrc
ln -sf ~/.vim/ackrc ~/.ackrc
