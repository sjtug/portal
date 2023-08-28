+++
title = "anthon"
tags = ["mirror-help"]
author = "LengmoAngel"
+++

AOSC OS（安同 OS）软件源。AOSC OS 是一个由安同开源社区 [https://aosc.io](https://aosc.io）开发的半滚动 Linux 发行版，对包括 x86-64,aarch64,LoongArch64 等多种处理器架构提供支持。

**使用方法**

AOSC OS 内置 `apt-gen-list` 用于切换社区提供的可用镜像源。不建议直接使用 `/etc/apt/sources.list` 变更镜像。

使用如下指令将本镜像源添加到可用镜像源列表中
```
sudo apt-gen-list add-custom-mirror sjtug https://mirror.sjtu.edu.cn/anthon/
```
随后使用如下启用本镜像源
```
sudo apt-gen-list add-mirror sjtug
```
如果仅使用本镜像源，使用如下指令
```
sudo apt-gen-list set-mirror sjtug
```
