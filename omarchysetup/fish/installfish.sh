#!/bin/sh

sudo pacman -S --noconfirm fish

if [ -d ~/.config/fish ];then
  echo "Fish config directory exists"
else
  mkdir ~/.config/fish
fi
