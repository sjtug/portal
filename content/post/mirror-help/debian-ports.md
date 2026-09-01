+++
title = "debian-ports"
tags = ["mirror-help"]
author = "hmsjy2017"
+++

大部分 Debian 的软件源配置文件使用传统的 One-Line-Style，路径为 `/etc/apt/sources.list`；从 Debian 12 开始，软件源配置文件变更为 DEB822 格式，路径为 `/etc/apt/sources.list.d/debian.sources`。
一般情况下，将对应文件中 Debian 默认源地址 `http://ports.debian.org/` 替换为镜像地址即可。

# 使用方式

以 riscv64 平台为例：

## 传统格式

编辑 `/etc/apt/sources.list`，删除所有内容，添加以下内容并保存。

```
deb [arch=riscv64] http://mirror.sjtu.edu.cn/debian-ports unstable main
deb [arch=riscv64] http://mirror.sjtu.edu.cn/debian-ports unreleased main
```

然后，使用 `sudo apt update` 更新软件包索引。

## DEB822 格式

TODO

