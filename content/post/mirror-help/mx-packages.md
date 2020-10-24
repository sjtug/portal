+++
title = "mx-packages"
tags = ["mirror-help"]
author = "htfy96"
+++

[MX Linux](https://mxlinux.org/) 是一个基于Debian 稳定分支的面向桌面的Linux发行，它是antiX 及早先的MEPIS 社区合作的产物。它采用Xfce 作为缺省桌面，是一个轻量级操作系统。

本Repo镜像了MX Linux和AntiX的软件包。

使用方法：

- （推荐）打开MX Repo Manager，选择SJTUG mirror

- （手动）：
打开` /etc/apt/sources.list`，将
```
deb http://mxrepo.com/mx/repo/ stretch non-free main
deb http://mxrepo.com/mx/testrepo/ mx7 test
```

替换成

```
deb http://mirrors.sjtug.sjtu.edu.cn/mx-packages/mx/repo stretch main non-free
deb http://mirrors.sjtug.sjtu.edu.cn/mx-packages/mx/testrepo test
```
