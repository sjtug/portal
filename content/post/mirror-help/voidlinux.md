+++
title = "voidlinux"
tags = ["mirror-help"]
author = "htfy96"
+++

Void linux 是基于 Linux 内核独立开发的通用操作系统。其特色在于一份二进制/源代码混合式包管理系统，这使得用户能快速安装、更新、移除软件，或者是借助 XBPS 源代码集合从源码直接生成软件。该发行的其他特性包括对 Raspberry Pi 单板计算机（armv6 和 armv7）的支持，每日更新的滚动式开发模式，可以选择 glibc 和 musl 作为 C 库，以及名为 runit 的原生 BSD 风格 init 系统。

使用方法：
```
# mkdir -p /etc/xbps.d
# cp /usr/share/xbps.d/*-repository-*.conf /etc/xbps.d/
# sed -i 's|https://alpha.de.repo.voidlinux.org|https://mirror.sjtu.edu.cn/voidlinux/|g' /etc/xbps.d/*-repository-*.conf
```

之后可用 `$ xbps-query -L` 检查是否正确替换。

运行 `# xbps-install -Su` 刷新镜像并更新系统。

请前往[官方教程](https://docs.voidlinux.org/xbps/repositories/mirrors/changing.html)获取更多信息。
