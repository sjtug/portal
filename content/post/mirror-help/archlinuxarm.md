+++
title = "archlinuxarm"
tags = ["mirror-help"]
author = "shrubbroom"
+++

Arch Linux ARM 是在使用 ARM 架构处理器的计算机上运行的 Linux 发行版。它为许多主流的采用 ARM 处理器的硬件提供内核及应用程序支持，同时和 Arch Linux 一样具有提供最新的软件源、避免预安装多余软件包等特点。

本仓库包含 Arch Linux ARM 的系统镜像及软件源。

系统镜像使用方法：请访问 https://archlinuxarm.org/platforms ，阅读硬件平台对应的安装指引并下载对应的系统镜像。

软件源使用方法：在 `/etc/pacman.d/mirrorlist` 的文件顶端（所有镜像源的最上面）加上：
```
Server = https://mirrors.sjtug.sjtu.edu.cn/archlinuxarm/$arch/$repo
```

之后，请执行下面的命令更新软件包缓存。
```
pacman -Syy
```
