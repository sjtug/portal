+++
title = "blackarch"
tags = ["mirror-help"]
author = "Alampdow"
+++

BlackArch 是一款基于 ArchLinux 的为渗透测试及安全研究人员开发的发行版，相当于 Arch 版的 Kali。可以当做现有 Arch 系统的非官方用户存储库。

使用方法：

在现有 Arch 系统中，编辑`/etc/pacman.conf`，在末尾添加两行

````
[blackarch]
Server = https://mirror.sjtu.edu.cn/blackarch/$repo/os/$arch
````

由于一些软件依赖32位的库，需要取消掉`/etc/pacman.conf`中`multilib`的注释，详见https://wiki.archlinux.org/index.php/Official_repositories#Enabling_multilib

之后，请执行下面的命令安装 blackarch-keyring 包导入 GPG key。

````
sudo pacman -Sy blackarch-keyring
````
