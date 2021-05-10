+++
title = "rocky"
tags = ["mirror-help"]
author = "berlin2123"
+++

使用方法：运行下面的指令一键替换并备份。

```bash
sed -e 's|^mirrorlist=|#mirrorlist=|g' \
    -e 's|^#baseurl=http://dl.rockylinux.org/$contentdir|baseurl=https://mirrors.sjtug.sjtu.edu.cn/rocky|g' \
    -i.bak \
    /etc/yum.repos.d/Rocky-*.repo
```

最后运行 `dnf makecache` 生成缓存
