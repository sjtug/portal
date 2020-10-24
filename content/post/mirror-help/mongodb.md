+++
title = "mongodb"
tags = ["mirror-help"]
author = "skyzh"
date = "2020-08-01T23:30:00+08:00"
+++

mongodb 源是 [repo.mongodb.org](http://repo.mongodb.org) 的全量同步。

**使用说明**

请参照官方教程配置并安装 [https://docs.mongodb.com/manual/administration/install-on-linux/](https://docs.mongodb.com/manual/administration/install-on-linux/)。
在安装过程中，把 `https://repo.mongodb.org/` 替换为 `https://mirrors.sjtug.sjtu.edu.cn/mongodb/`。比如在 Ubuntu focal 中使用时，可以执行以下指令。

```
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | apt-key add -
echo "deb [ arch=amd64,arm64 ] https://mirrors.sjtug.sjtu.edu.cn/mongodb/apt/ubuntu/ focal/mongodb-org/4.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.4.list
```
