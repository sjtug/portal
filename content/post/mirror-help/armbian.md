+++
title = "armbian"
tags = ["mirror-help"]
author = "qianbinbin"
+++

Armbian 是为 ARM 单板机提供的基于 Debian 和 Ubuntu 的操作系统。Armbian 仓库包括专用的 u-boot、内核及各种支持文件。

可以使用以下方法更换软件源：

- 运行 `armbian-config` -> Personal -> Mirrors -> 选择镜像站。
- 编辑 `/etc/apt/sources.list.d/armbian.list`，将 `http://apt.armbian.com` 替换为 `https://mirror.sjtu.edu.cn/armbian/`，然后执行 `apt update`。
