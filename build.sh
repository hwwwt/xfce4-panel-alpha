#!/bin/bash

name=xfce4-panel
version=4.12.0

wget http://archive.xfce.org/src/xfce/$name/${version%.*}/$name-$version.tar.bz2
tar xfvj $name-$version.tar.bz2
cd ./$name-$version

# 活动窗口最大时面板不透明，若要禁用，注释掉下面三行
cp ../patch/panel/* ./panel/
cp ../patch/migrate/* ./migrate/
cp ../patch/po/* ./po/

# 开启扁平按钮时活动窗口按钮透明，若要禁用，注释掉下面这行
cp ../patch/plugins/tasklist/* ./plugins/tasklist/

./configure \
--prefix=/usr \
--sysconfdir=/etc \
--libexecdir=/usr/lib \
--localstatedir=/var \
--disable-static \
--enable-gio-unix \
--enable-gtk-doc \
--enable-gtk3 \
--disable-debug
make

cd ..

