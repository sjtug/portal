+++
title = "fedora/linux"
tags = ["mirror-help"]
author = "htfy96"
+++

Fedora 项目是一个由红帽公司所赞助，以统筹 Fedora Linux 操作系统开发的社区。
Fedora 项目在建设开源软件社区的同时构建了一个被称为"Fedora"的 GNU/Linux 发行版。

使用方法：运行下面的指令一键替换并备份。

```bash
sed -e 's/metalink/#metalink/g' -e 's|#baseurl=http://download.example/pub/|baseurl=https://mirror.sjtu.edu.cn/|g' -i.bak /etc/yum.repos.d/<需要替换的文件>
```

最后运行 `dnf makecache` 生成缓存
