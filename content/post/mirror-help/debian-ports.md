+++
title = "debian-ports"
tags = ["mirror-help"]
author = "hmsjy2017"
+++
本软件源仅适用于 Debian riscv64。

编辑`/etc/apt/sources.list`，删除所有内容，添加以下内容并保存。

```
deb [arch=riscv64] http://mirror.sjtu.edu.cn/debian-ports unstable main
deb [arch=riscv64] http://mirror.sjtu.edu.cn/debian-ports unreleased main
```
然后，使用`sudo apt update`更新软件包索引。
