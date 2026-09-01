+++
title = "ubuntu-ports"
tags = ["mirror-help"]
author = "LengmoAngel"
+++

Ubuntu 是一个基于 Debian 的 Linux 发行版，包含了常用的大量软件包。Ubuntu 的目标在于为一般用户提供一个最新同时又相当稳定，主要以自由软件建构而成的作业系统。Ubuntu 目前具有庞大的社群力量支持，用户可以方便地从社群获得帮助。

本镜像收录 arm64, armhf, PowerPC, ppc64el, s390x 等结构的软件。

镜像站一天同步一次 Ubuntu 镜像。为了取得最新的安全更新，我们不建议您将 security.ubuntu.com 换成镜像源。

以下为修改后的镜像源列表文件的示例。请注意：下面的 focal 只是一个例子，请将它换成自己使用的 Ubuntu 版本代号。否则系统会自动升级到 focal，且会导致未知的问题。

```
deb https://mirror.sjtu.edu.cn/ubuntu-ports/ focal main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ focal main  restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu-ports/ focal-updates main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ focal-updates main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu-ports/ focal-backports main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ focal-backports main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu-ports/ focal-security main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ focal-security main restricted universe multiverse
```

其中`deb-src`为源码镜像，默认注释以提高速度。可将原镜像列表备份后替换为上述内容。

