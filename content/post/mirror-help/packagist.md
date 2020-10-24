+++
title = "packagist"
tags = ["mirror-help"]
author = "skyzh"
+++

Packagist 是 PHP 包管理软件 Composer 的源。本镜像仅包含所有包的 metadata，并非全量同步镜像。

**使用方法**

全局设置

```
composer config -g repo.packagist composer https://packagist.mirrors.sjtug.sjtu.edu.cn
```

或者仅对一个项目设置

```
composer config repo.packagist composer https://packagist.mirrors.sjtug.sjtu.edu.cn
```
