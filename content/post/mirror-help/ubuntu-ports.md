+++
title = "ubuntu-ports"
tags = ["mirror-help"]
author = "wdwang"
+++

使用方式：

可使用`gedit`等文本编辑器修改`/etc/apt/sources.list`。修改后使用`sudo apt update`更新软件源。

从 Ubuntu 24.04 起，Ubuntu 的软件源配置文件变更为 DEB822 格式，在此格式下使用镜像源时，须注意替换`/etc/apt/sources.list`对应路径为`/etc/apt/sources.list.d/ubuntu.sources`。

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

Ubuntu 24.04 (DEB822 格式) `/etc/apt/sources.list.d/ubuntu.sources`

```
Types: deb
URIs: https://mirror.sjtu.edu.cn/ubuntu/
Suites: noble noble-updates noble-backports
Components: main restricted universe multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg

# Types: deb-src
# URIs: https://mirror.sjtu.edu.cn/ubuntu/
# Suites: noble noble-updates noble-backports
# Components: main restricted universe multiverse
# Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg

Types: deb
URIs: https://mirror.sjtu.edu.cn/ubuntu/
Suites: noble-security
Components: main restricted universe multiverse
Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg

# Types: deb-src
# URIs: https://mirror.sjtu.edu.cn/ubuntu/
# Suites: noble-security
# Components: main restricted universe multiverse
# Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg

# Types: deb
# URIs: https://mirror.sjtu.edu.cn/ubuntu/
# Suites: noble-proposed
# Components: main restricted universe multiverse
# Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg

# Types: deb-src
# URIs: https://mirror.sjtu.edu.cn/ubuntu/
# Suites: noble-proposed
# Components: main restricted universe multiverse
# Signed-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg
```

Ubuntu 24.04 (旧格式，不推荐使用) `/etc/apt/sources.list`

```
deb https://mirror.sjtu.edu.cn/ubuntu/ noble main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ noble main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu/ noble-updates main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ noble-updates main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu/ noble-backports main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ noble-backports main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu/ noble-security main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ noble-security main restricted universe multiverse

# deb https://mirror.sjtu.edu.cn/ubuntu/ noble-proposed main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ noble-proposed main restricted universe multiverse
```

其中`deb-src`为源码镜像，默认注释以提高速度。可将原镜像列表备份后替换为上述内容。
