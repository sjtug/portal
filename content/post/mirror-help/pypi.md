+++
title = "pypi/web/simple"
tags = ["mirror-help"]
author = "htfy96"
+++

<del>2019年10月10日起，由于 Pypi 占用过多空间，我们将 Pypi 改为了反代。Pypi 源的服务质量可能有所下降。</del>

2020年12月7日起，我们通过智能缓存全量同步了Pypi。欢迎继续使用。

Pypi是Python官方的包仓库，可以通过`pip`, `easy_install`等方式从pypi安装`numpy`, `tensorflow`等常用包。

使用方法：

创建或编辑`~/.config/pip/pip.conf`文件，加入或修改`index-url`相关段落为：

```conf
[global]
index-url = https://mirrors.sjtug.sjtu.edu.cn/pypi/web/simple
format = columns
```
