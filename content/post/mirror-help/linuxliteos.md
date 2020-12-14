+++
title = "linuxliteos"
tags = ["mirror-help"]
author = "hmsjy2017"
+++

Linux Lite 是一个基于 Ubuntu 长期支持版本（LTS）的 Linux 发行版，搭载 Xfce 桌面环境。Linux Lite 的目的是将 Windows 用户引入 Linux，对新手比较友好。其旨在提供一套完整的应用程序来帮助用户满足用户日常的计算需求，这包括完整的办公套件、媒体播放器和其他基本的日常软件。

**使用方式：** 在终端输入`sudo nano /etc/apt/sources.list`，删除原有内容，用以下内容代替。

```
deb https://mirrors.sjtug.sjtu.edu.cn/linuxliteos/ emerald main
```

然后

`sudo apt update`
