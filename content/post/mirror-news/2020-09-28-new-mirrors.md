+++
date = "2020-09-28T14:00:00+08:00"
title = "新增 emacs-elpa 与 msys2 镜像"
tags = ["mirror-news"]
author="skyzh"
+++

SJTUG 镜像在最近两个月中新增了下面两个镜像。

* emacs-elpa (包含 GNU ELPA, MELPA, MELPA Stable, Marmalade, Org, Sunrise Commander ELPA, user42 ELPA)，上游 emacs-china。
* msys2

九月中旬，镜像站的反向代理服务出现了一些稳定性问题。我们更换了反向代理方式，提高了 crates.io 等镜像的稳定性。

在 @johnnychen94 的帮助下，镜像站解决了 julia 镜像缺失文件的问题。

Qt 镜像已加入官方源。在使用官方安装器进行安装时，国内用户会自动使用 SJTUG 镜像站下载文件。

Ubuntu, Debian 等 apt 源禁用了 https 自动跳转，现在可以直接使用 http 协议访问。

欢迎大家使用。
