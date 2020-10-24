+++
title = "cran"
tags = ["mirror-help"]
author = "skyzh"
date = "2020-07-04T15:33:04+08:00"
+++

使用方法：

在安装时指定 repo。

```R
install.packages("lattice", repos="https://mirrors.sjtug.sjtu.edu.cn/cran/")
```

在 `.Rprofile` 中设置默认 repo。

```R
options(repos=structure(c(CRAN="https://mirrors.sjtug.sjtu.edu.cn/cran/")))
```
