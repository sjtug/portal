+++
title = "pop-os"
tags = ["mirror-help"]
author = "xiaozhu"
date = "2023-06-08T18:27:00+08:00"
+++

PopOS 是 system76 公司基于 ubuntu 开发的衍生版，具有称为 COSMIC 的定制 GNOME桌面环境，内置大量的库和开发工具。

使用方法：
```bash
sed -i 's@http://apt.pop-os.org/@https://mirror.sjtu.edu.cn/pop-os/@g' /etc/apt/sources.list.d/pop-os-apps.sources
sed -i 's@http://apt.pop-os.org/@https://mirror.sjtu.edu.cn/pop-os/@g' /etc/apt/sources.list.d/pop-os-release.sources
sed -i 's@http://apt.pop-os.org/@https://mirror.sjtu.edu.cn/@g' /etc/apt/sources.list.d/system.sources
```
