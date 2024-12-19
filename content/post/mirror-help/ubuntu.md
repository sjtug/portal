+++
title = "ubuntu"
tags = ["mirror-help"]
author = "htfy96"

+++

Ubuntu是一个基于Debian的Linux发行版，包含了常用的大量软件包。Ubuntu的目标在于为一般用户提供一个最新同时又相当稳定，主要以自由软件建构而成的作业系统。Ubuntu目前具有庞大的社群力量支持，用户可以方便地从社群获得帮助。

SJTUG镜像源可以加速软件包的安装。

本镜像仅包含 32/64 位 x86 架构处理器的软件包，在 ARM(arm64, armhf)、PowerPC(ppc64el)、RISC-V(riscv64) 和 S390x 等架构的设备上（对应官方源为 ports.ubuntu.com）请使用 ubuntu-ports 镜像。

使用方式：

使用`sudo nano /etc/apt/sources.list`打开镜像源列表文件。将类似于`http://archive.ubuntu.com/ubuntu`或`http://cn.archive.ubuntu.com/ubuntu`的地址改成`https://mirror.sjtu.edu.cn/ubuntu`，之后按`Ctrl-O 回车`保存，按`Ctrl-X`退出。最后执行`sudo apt update`即可。

镜像站一天同步一次 Ubuntu 镜像。为了取得最新的安全更新，我们不建议您将 `security.ubuntu.com` 换成镜像源。

您也可使用`sudo sed -i 's/http:\/\/archive.ubuntu.com/https:\/\/mirror.sjtu.edu.cn/g' /etc/apt/sources.list`或`sudo sed -i 's/http:\/\/cn.archive.ubuntu.com/https:\/\/mirror.sjtu.edu.cn/g' /etc/apt/sources.list`指令直接批量修改。

以下为修改后的镜像源列表文件的示例。可使用`gedit`等文本编辑器修改`/etc/apt/sources.list`。修改后使用`sudo apt update`更新软件源。

从 Ubuntu 24.04 起，Ubuntu 的软件源配置文件变更为 DEB822 格式，在此格式下使用镜像源时，须注意替换`/etc/apt/sources.list`对应路径为`/etc/apt/sources.list.d/ubuntu.sources`。

Ubuntu 18.04

```
deb https://mirror.sjtu.edu.cn/ubuntu/ bionic main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ bionic-security main restricted universe multiverse

# deb https://mirror.sjtu.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
```

Ubuntu 20.04

```
deb https://mirror.sjtu.edu.cn/ubuntu/ focal main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ focal main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu/ focal-security main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ focal-security main restricted universe multiverse

# deb https://mirror.sjtu.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse
```

Ubuntu 22.04

```
deb https://mirror.sjtu.edu.cn/ubuntu/ jammy main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ jammy main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse
deb https://mirror.sjtu.edu.cn/ubuntu/ jammy-security main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ jammy-security main restricted universe multiverse

# deb https://mirror.sjtu.edu.cn/ubuntu/ jammy-proposed main restricted universe multiverse
# deb-src https://mirror.sjtu.edu.cn/ubuntu/ jammy-proposed main restricted universe multiverse
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
