#!/bin/bash

# install script aimed for osx

echo 'installing ack'
brew install ack

echo 'linking vimrc and ackrc'
ln -sf ~/.vim/vimrc ~/.vimrc
ln -sf ~/.vim/ackrc ~/.ackrc
