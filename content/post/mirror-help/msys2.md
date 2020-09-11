**收录架构**
- MINGW: i686, x86_64
- MSYS: i686, x86_64
**获取基本组件包**
请访问该镜像目录下的`distrib/`目录（[x86_64](http://mirrors.sjtug.sjtu.edu.cn/msys2/distrib/x86_64/)、[i686](http://mirrors.sjtug.sjtu.edu.cn/msys2/distrib/i686/)），找到名为`msys2-<架构>-<日期>.exe`的文件（如`msys2-x86_64-20141113.exe`），下载安装即可。
**pacman的配置**
编辑`/etc/pacman.d/mirrorlist.mingw32`，在文件开头添加：
```
Server = http://mirrors.ustc.edu.cn/msys2/mingw/i686
```
编辑`/etc/pacman.d/mirrorlist.mingw64`，在文件开头添加：
```
Server = http://mirrors.ustc.edu.cn/msys2/mingw/x86_64
```
编辑`/etc/pacman.d/mirrorlist.msys`，在文件开头添加：
```
Server = http://mirrors.ustc.edu.cn/msys2/msys/$arch
```
然后执行`pacman -Sy`刷新软件包数据即可。

注：本Help参考自[UTSC镜像](https://lug.ustc.edu.cn/wiki/mirrors/help/msys2)和[清华镜像](https://mirrors.tuna.tsinghua.edu.cn/help/msys2/)