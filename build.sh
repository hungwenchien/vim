#!/bin/bash
./configure --with-features=huge --enable-gui=gtk3 --enable-luainterp --enable-cscope

cd src
make -j8
sudo make install

sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 0
sudo update-alternatives --set editor /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 0
sudo update-alternatives --set vi /usr/local/bin/vim
sudo update-alternatives --install /usr/bin/vim vim /usr/local/bin/vim 0
sudo update-alternatives --set vim /usr/local/bin/vim
