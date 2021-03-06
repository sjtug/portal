+++
date = "2021-03-06T18:40:00+08:00"
title = "新增 Bioconductor, openEuler, Void Linux, Wireshark 镜像"
tags = ["mirror-news"]
author="skyzh"
+++

近期，SJTUG 的镜像同步工具 mirror-clone [添加了 Rsync 支持](https://github.com/sjtug/mirror-clone/pull/57)。
在此基础上，我们增加了 Bioconductor, Void Linux 和 Wireshark 镜像。这三个镜像都存储在 SJTU 对象存储服务上。
从这些软件源下载软件时，您会被自动重定向到 SJTU 对象存储服务。

我们还增加了 openEuler 镜像，存储在思源 (mirror.sjtu.edu.cn) 服务器上。

您可以参阅镜像站首页的帮助文档，配置相关软件使用 SJTUG 镜像。

与此同时，由于致远服务器压力过大，我们将部分软件源迁移到了其他存储中。您可以调整相关软件的设置，以取得最好的使用体验。

* manjaro 迁移到了思源服务器。
* archlinux 迁移到了思源服务器。
* ctan 迁移到了思源服务器。
* anaconda 迁移到了 SJTU 对象存储服务。

欢迎大家使用。
