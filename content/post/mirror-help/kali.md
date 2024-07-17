+++
title = "kali"
tags = ["mirror-help"]
author = "htfy96"
+++

Kali Linux 是基于Debian的Linux发行版，设计用于数字鉴识和渗透测试。由 Offensive Security Ltd 维护和资助。

使用方法：

编辑`/etc/apt/sources.list`，在头部添加：
```sh
deb https://mirrors.sjtug.sjtu.edu.cn/kali kali-rolling main contrib non-free non-free-firmware
deb-src https://mirrors.sjtug.sjtu.edu.cn/kali kali-rolling main contrib non-free non-free-firmware
```
