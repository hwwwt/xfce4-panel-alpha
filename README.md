xfce4-panel-alpha
=================
</br></br>
一个修改版的xfce4-Panel，可以达到类似** Android 沉浸式任务栏**的效果。 
 
A mod version of xfce4-panel, just like **Android's immersive top bar**.

![Normal](http://img.vim-cn.com/51/292e5018007e7bc4858fa8e4d8a6a74d96df48.png)


![Maximal](http://img.vim-cn.com/b2/540e77eaeb649e92f567cca08de0265eaf966c.png)

-----

介绍/Introduction  
----------------
  
当前活动窗口最大化时顶栏变为**透明**。

When the active window become maximize, the panel will become **transparent**.

-----


安装/Installation
----------------

**Arch Linux**用户编译安装命令/For **Arch Linux**：

    $ git clone https://github.com/hwwwt/xfce4-panel-alpha.git
    $ cd xfce4-panel-alpha
    $ makepkg -si


其他发行版用户/For other distros：

  编译依赖/Build-time dependencies: **intltool gtk-doc wget**

    $ git clone https://github.com/hwwwt/xfce4-panel-alpha.git
    $ cd xfce4-panel-alpha
    $ ./build.sh
    $ sudo ./install.sh


安装完毕后**可以**卸载编译依赖。  
After building finished, you **can** remove those build-time dependencies.

