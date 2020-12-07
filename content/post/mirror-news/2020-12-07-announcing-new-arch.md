+++
date = "2020-12-07T12:00:00+08:00"
title = "SJTUG 镜像源智能缓存正式上线"
tags = ["mirror-news"]
author="skyzh"
+++

SJTUG 镜像在近期进行了一次更新。我们开发了智能缓存工具 [mirror-intel](https://github.com/sjtug/mirror-intel)，
并将部分反向代理软件源移植到了智能缓存系统上。

智能缓存的后端是由上海交通大学网络信息中心提供的对象存储服务。

当您访问智能缓存软件源时，服务器会先检测文件是否在对象存储中。如果存在，请求会直接被重定向到 [https://s3.jcloud.sjtu.edu.cn](https://s3.jcloud.sjtu.edu.cn) 。
否则，请求会被重定向到上游；与此同时，智能缓存会将文件同步到对象存储中。

目前通过智能缓存提供服务的软件源镜像包括：

* rust-static (rustup 镜像源)。上游为 [https://static.rust-lang.org](https://static.rust-lang.org) 。近三个月的工具链均已缓存。
* crates.io (cargo 包管理器镜像源)。上游为 [https://static.crates.io](https://static.crates.io) 。所有包都已缓存。
* homebrew-bottles。上游为清华大学开源软件镜像站 (TUNA)。所有包都已缓存。
* pypi-packages。上游为清华大学开源软件镜像站 (TUNA)。正在同步中。
* flathub, fedora-ostree, fedora-iot 均使用官方 ostree 上游。所有分支都已缓存。ostree 镜像还在测试阶段，正式版会在近几个月内发布。

欢迎大家的使用～
