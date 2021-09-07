+++
title = "debian"
tags = ["mirror-help"]
author = "hmsjy2017"
+++
本软件源仅适用于 Debian riscv64。

编辑`/etc/apt/sources.list`，添加以下内容并保存。

```
deb https://mirror.sjtu.edu.cn/debian-ports sid main
#deb-src http://ftp.ports.debian.org/debian-ports/ sid main
deb https://mirror.sjtu.edu.cn/debian-ports unstable main
deb https://mirror.sjtu.edu.cn/debian-ports unreleased main
deb https://mirror.sjtu.edu.cn/debian-ports experimental main
```
然后，使用`sudo apt update`更新软件包索引。
