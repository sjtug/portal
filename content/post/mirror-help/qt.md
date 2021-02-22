+++
title = "qt"
tags = ["mirror-help"]
author = "skyzh"
date = "2021-02-22T11:00:00+08:00"
+++

通常来说，Qt 在线安装器会自动选择最近的镜像，因此无需做特殊设置即可使用 SJTUG Qt 镜像。

你可以通过下面的方法手动指定 Qt 镜像。

* 使用离线安装器安装：在 [Offline Installers](https://www.qt.io/offline-installers) 页面中找到需要下载的版本，并将链接中的
  `http://download.qt.io` 替换为 `https://mirrors.sjtug.sjtu.edu.cn/qt`。
* 使用在线安装器安装：参考 [Qt Wiki](https://wiki.qt.io/Online_Installer_4.x#Selecting_a_mirror_for_opensource)，
  在命令行中给安装器提供 `--mirror https://mirrors.sjtug.sjtu.edu.cn/qt` 的参数。比如在 macOS 上：

```
./qt-unified-macOS-x86_64-4.0.1-1-online.app/Contents/MacOS/qt-unified-macOS-x86_64-4.0.1-1-online --mirror https://mirrors.sjtug.sjtu.edu.cn/qt
```
