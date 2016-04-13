
xfce4-panel-4.12.0个人修改：

活动窗口最大时面板不透明;

活动窗口按钮透明（开启扁平按钮时）。


Archlinux用户编译并安装命令：

$git clone https://github.com/hwwwt/xfce4-panel-alpha.git

$cd xfce4-panel-alpha

$makepkg -si


其他发行版用户：

编译依赖：intltool gtk-doc wget

$git clone https://github.com/hwwwt/xfce4-panel-alpha.git

$cd xfce4-panel-alpha

$./build.sh

$sudo ./install.sh


安装完毕后可以卸载编译依赖。

