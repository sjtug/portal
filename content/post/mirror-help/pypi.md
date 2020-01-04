+++
title = "pypi"
tags = ["mirror-help"]
author = "htfy96"
+++

Pypi是Python官方的包仓库，可以通过`pip`, `easy_install`等方式从pypi安装`numpy`, `tensorflow`等常用包。

使用方法：

创建或编辑`~/.config/pip/pip.conf`文件，加入或修改`index-url`相关段落为：

```conf
[global]
index-url = https://mirrors.sjtug.sjtu.edu.cn/pypi/web/simple
format = columns
```
