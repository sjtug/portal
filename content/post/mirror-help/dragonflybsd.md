+++
title = "dragonflybsd"
tags = ["mirror-help"]
author = "liweitianux"
+++

## 项目简介

[DragonFly BSD](https://www.dragonflybsd.org/) 隶属于 [BSD 系统家族](https://en.wikipedia.org/wiki/BSD)，
是其中相对小众、但富有特色的一个成员，与 [FreeBSD](https://www.freebsd.org/)、
[OpenBSD](https://www.openbsd.org/)、[NetBSD](https://www.netbsd.org/)
组成四大 BSD 操作系统。

自 2003 年从 FreeBSD 4.8 衍生而来，
DragonFly BSD 对虚拟内存、虚拟文件系统、网络协议栈等关键内核子系统做了大幅修改，
尽可能地消除了锁和竞争，实现了出色的 SMP 性能。
项目创始人 Matthew Dillon 自行开发的 [HAMMER2](https://en.wikipedia.org/wiki/HAMMER2)
文件系统是另一个主要特色，该文件系统拥有可媲美 ZFS 的功能和稳定性，但节省内存等资源。
DragonFly BSD 的其他特色功能还有 vkernel、swapcache、LUKS、TrueCrypt、等等，
详情可参考：[主要特性列表](https://www.dragonflybsd.org/features/)。

DragonFly BSD 的内核简洁小巧，代码整洁，在线手册 (man pages) 清晰，适合学习和研究。
驱动程序和用户空间工具主要继承自 FreeBSD，同时与 FreeBSD 使用相同的包管理工具
[pkg(8)](https://github.com/freebsd/pkg)，可利用 FreeBSD 丰富全面的文档资源，
用户体验良好。
此外，DragonFly BSD 的社区虽小，但很友好。

## 镜像介绍

SJTUG 镜像是 DragonFly BSD 在中国内地的首个镜像站点，
依托于华东教育网骨干节点，提供稳定、快速的镜像服务。

我们的镜像服务目前提供了如下内容：

* [安装镜像 (ISO/IMG)](/dragonflybsd/iso-images/)
* [预编译软件包](/dragonflybsd/dports/)
  (收录了 3 个版本：当前开发版本、当前发布版本、上一发布版本)

## 使用方法

创建 pkg(8) 仓库配置文件 `/usr/local/etc/pkg/repos/sjtug.conf`，添加以下内容：

```conf
# China, Shanghai
SJTUG: {
    url:        https://mirrors.sjtug.sjtu.edu.cn/dragonflybsd/dports/${ABI}/LATEST,
    priority:   10,
    enabled:    yes
}
```

然后执行 `pkg update -f` 更新索引即可开始使用了。

注：仓库的优先级 (`priority`) 默认为 0，此处通过设置 `priority: 10`
提高优先级来优先使用 SJTUG 镜像服务。

## 相关链接

* 官方主页: [https://www.dragonflybsd.org/](https://www.dragonflybsd.org/)
* 镜像列表: [https://www.dragonflybsd.org/mirrors/](https://www.dragonflybsd.org/mirrors/)
* 系统源码: [官方 Gitweb](https://gitweb.dragonflybsd.org/dragonfly.git), [GitHub](https://github.com/DragonFlyBSD/DragonFlyBSD)
* GitHub: [https://github.com/DragonFlyBSD](https://github.com/DragonFlyBSD/DragonFlyBSD)
