+++
title = "ubuntu"
tags = ["mirror-help"]
author = "htfy96"

+++

Ubuntu是一个基于Debian的Linux发行版，包含了常用的大量软件包。Ubuntu的目标在于为一般用户提供一个最新同时又相当稳定，主要以自由软件建构而成的作业系统。Ubuntu目前具有庞大的社群力量支持，用户可以方便地从社群获得帮助。

SJTUG镜像源可以加速软件包的安装。

使用方式：

使用`sudo nano /etc/apt/sources.list`打开镜像源列表文件。将类似于`http://cn.archive.ubuntu.com/ubuntu`或`http://cn.archive.ubuntu.com/ubuntu`的地址改成`https://mirrors.sjtug.sjtu.edu.cn/ubuntu`，之后按`Ctrl-O 回车`保存，按`Ctrl-X`退出。最后执行`sudo apt update`即可。也可使用`sudo sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/mirrors.sjtug.sjtu.edu.cn/g' /etc/apt/sources.list`指令直接批量修改。

以下为修改后的镜像源列表文件的示例：

```
# See http://help.ubuntu.com/community/UpgradeNotes for how to upgrade to
# newer versions of the distribution.
deb https://mirrors.sjtug.sjtu.edu.cn/ubuntu focal main restricted
# deb-src https://mirrors.sjtug.sjtu.edu.cn/ubuntu focal main restricted
deb https://mirrors.sjtug.sjtu.edu.cn/ubuntu focal-updates main restricted
# deb-src https://mirrors.sjtug.sjtu.edu.cn/ubuntu focal-updates main restricted
deb https://mirrors.sjtug.sjtu.edu.cn/ubuntu focal universe
# deb-src https://mirrors.sjtug.sjtu.edu.cn/ubuntu focal universe
deb https://mirrors.sjtug.sjtu.edu.cn/ubuntu focal-updates universe
# deb-src https://mirrors.sjtug.sjtu.edu.cn/ubuntu focal-updates universe
deb https://mirrors.sjtug.sjtu.edu.cn/ubuntu focal multiverse
# deb-src https://mirrors.sjtug.sjtu.edu.cn/ubuntu focal multiverse
deb https://mirrors.sjtug.sjtu.edu.cn/ubuntu focal-updates multiverse
# deb-src https://mirrors.sjtug.sjtu.edu.cn/ubuntu focal-updates multiverse
deb https://mirrors.sjtug.sjtu.edu.cn/ubuntu focal-backports main restricted universe multiverse
# deb-src https://mirrors.sjtug.sjtu.edu.cn/ubuntu focal-backports main restricted universe multiverse
deb http://archive.canonical.com/ubuntu focal partner
# deb-src http://archive.canonical.com/ubuntu focal partner
deb https://mirrors.sjtug.sjtu.edu.cn/ubuntu focal-security main restricted universe multiverse
# deb-src https://mirrors.sjtug.sjtu.edu.cn/ubuntu focal-security main restricted universe multiverse
```

其中`deb-src`为源码镜像，默认注释以提高速度。可将原镜像列表备份后替换为上述内容。