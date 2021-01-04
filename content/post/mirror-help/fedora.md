+++
title = "fedora/linux"
tags = ["mirror-help"]
author = "htfy96"
+++

Fedora 项目是一个由红帽公司所赞助，以统筹 Fedora Linux 操作系统开发的社区。
Fedora 项目在建设开源软件社区的同时构建了一个被称为"Fedora"的 GNU/Linux 发行版。

使用方法：

备份旧的 repo list

```bash
mv /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora.repo.backup 
mv /etc/yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo.backup 
```

接着，运行一键替换指令。

```bash
sed -i 's/metalink/#metalink/g' /etc/yum.repos.d/<需要替换的文件>
sed -i 's|#baseurl=http://download.example/pub/|baseurl=http://mirror.sjtu.edu.cn/|g' /etc/yum.repos.d/<需要替换的文件>
```

最后运行 `dnf makecache` 生成缓存
