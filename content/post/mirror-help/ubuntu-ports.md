+++
title = "ubuntu-ports"
tags = ["mirror-help"]
author = "wdwang"
+++

使用方式：

可使用`gedit`等文本编辑器修改`/etc/apt/sources.list`。修改后使用`sudo apt update`更新软件源。

Ubuntu 18.04

```
deb https://mirror.sjtu.edu.cn/ubuntu-ports/ bionic main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ bionic main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu-ports/ bionic-updates main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ bionic-updates main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu-ports/ bionic-backports main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ bionic-backports main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu-ports/ bionic-security main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ bionic-security main restricted universe multiverse

# deb https://mirror.sjtu.edu.cn/ubuntu-ports/ bionic-proposed main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ bionic-proposed main restricted universe multiverse
```

Ubuntu 20.04

```
deb https://mirror.sjtu.edu.cn/ubuntu-ports/ focal main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ focal main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu-ports/ focal-updates main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ focal-updates main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu-ports/ focal-backports main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ focal-backports main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu-ports/ focal-security main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ focal-security main restricted universe multiverse

# deb https://mirror.sjtu.edu.cn/ubuntu-ports/ focal-proposed main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ focal-proposed main restricted universe multiverse
```

Ubuntu 22.04

```
deb https://mirror.sjtu.edu.cn/ubuntu-ports/ jammy main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ jammy main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu-ports/ jammy-updates main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ jammy-updates main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu-ports/ jammy-backports main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ jammy-backports main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu-ports/ jammy-security main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ jammy-security main restricted universe multiverse

# deb https://mirror.sjtu.edu.cn/ubuntu-ports/ jammy-proposed main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu-ports/ jammy-proposed main restricted universe multiverse
```

其中`deb-src`为源码镜像，默认注释以提高速度。可将原镜像列表备份后替换为上述内容。
