+++
date = "2021-05-25T14:00:00+08:00"
title = "新增 AlmaLinux, Armbian, Fedora development, ghcup, Linux kernel, Rocky Linux 镜像"
tags = ["mirror-news"]
author="skyzh"
+++

SJTUG 软件源镜像在近期添加了一批新的镜像源。

* 添加 ghcup 镜像。[PR#225](https://github.com/sjtug/mirror-docker-unified/pull/225)
* 添加 Armbian 和 AlmaLinux 镜像 [PR#227](https://github.com/sjtug/mirror-docker-unified/pull/227)
* 添加 Linux kernel 镜像 [PR#228](https://github.com/sjtug/mirror-docker-unified/pull/228)
* 添加了 Fedora development 镜像 [PR#236](https://github.com/sjtug/mirror-docker-unified/pull/236) [PR#238](https://github.com/sjtug/mirror-docker-unified/pull/238)
* 添加了 Rocky Linux 镜像 [PR#246](https://github.com/sjtug/mirror-docker-unified/pull/246)

与此同时，我们也做了一些功能上的更新：

* Homebrew 支持从 ghcr.io 同步。 [PR#245](https://github.com/sjtug/mirror-docker-unified/pull/245)
* Rsync 的磁盘限制大大减小，可以为下游提供文件同步服务了。 [PR#240](https://github.com/sjtug/mirror-docker-unified/pull/240)
* git 源切换到了 git.sjtu.edu.cn 提供服务，用户体验更好。 [PR#249](https://github.com/sjtug/mirror-docker-unified/pull/249)
* Caddy Web Server 升级到了 2.4.0。 [PR#248](https://github.com/sjtug/mirror-docker-unified/pull/248)

欢迎大家使用。
