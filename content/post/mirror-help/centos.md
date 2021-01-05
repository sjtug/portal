+++
title = "centos"
tags = ["mirror-help"]
author = "skyzh"
+++

使用方法：运行下面的指令一键替换并备份。

```bash
sed -e 's/mirrorlist/#mirrorlist/g' -e 's|#baseurl=http://mirror.centos.org/|baseurl=http://mirror.sjtu.edu.cn/|g' -i.bak /etc/yum.repos.d/<需要替换的文件>
```

最后运行 `dnf makecache` 生成缓存
