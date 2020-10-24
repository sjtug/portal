+++
title = "parrot"
tags = ["mirror-help"]
author = "htfy96"
+++

Parrot Security OS是一个基于Debian的Linux发行版，专注于计算机安全。它专为渗透测试，漏洞评估和缓解，计算机取证和匿名Web浏览而设计。

**使用方法**

修改`etc/apt/sources.list.d/parrot.list`的以下内容：

```
#stable repository
deb https://mirrors.sjtug.sjtu.edu.cn/parrot/ parrot main contrib non-free
#deb-src https://mirrors.sjtug.sjtu.edu.cn/parrot/ parrot main contrib non-free
```