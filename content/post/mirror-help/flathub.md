+++
title = "flathub"
tags = ["mirror-help"]
author = "skyzh"
date = "2021-01-04T22:00:00+08:00"
+++

Flathub 镜像是 [flathub.org](https://flathub.org) 的智能缓存。当您第一次请求镜像中的资源时，
如果文件没有被镜像服务器缓存，我们会将您重定向回原站，并在后台进行缓存。
目前镜像服务器上已经预先缓存了所有 Flathub 软件的分支。

使用方法：

```bash
sudo flatpak remote-modify flathub --url=https://mirror.sjtu.edu.cn/flathub
```
