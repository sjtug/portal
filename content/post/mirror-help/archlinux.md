+++
title = "archlinux"
tags = ["mirror-help"]
author = "htfy96"
+++

Arch Linux 是通用 x86-64 GNU/Linux 发行版。Arch 采用滚动升级模式，尽全力提供最新的稳定版软件。初始安装的 Arch 只是一个基本系统，随后用户可以根据自己的喜好安装需要的软件并配置成符合自己理想的系统。

使用方法：编辑 `/etc/pacman.d/mirrorlist` 文件，添加 `Server = https://mirrors.sjtug.sjtu.edu.cn/archlinux/$repo/os/$arch` 这一行，同时注释掉其它所有镜像，然后运行 `sudo pacman -Syy` 更新软件包缓存。
