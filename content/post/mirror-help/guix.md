+++
title = "guix"
tags = ["mirror-help"]
author = "pengmeiyu"
+++

[GNU/Guix](https://guix.gnu.org/)是隶属于GNU项目的自由软件发行版。Guix可以作为独立的操作系统发行版安装在计算机上，可以作为软件包管理器安装在别的Linux发行版上。
它的核心是一个函数式软件包管理器，支持事务性的升级、回滚操作。用户可以通过
[Guile](https://www.gnu.org/software/guile/)语言编写配置文件管理操作系统的服务或者管理用户安装的软件。


## Git 镜像

Git 镜像的地址为 [https://git.sjtu.edu.cn/sjtug/guix.git](https://git.sjtu.edu.cn/sjtug/guix.git)。修改 `~/.config/guix/channels.scm` 文件即可在 `guix pull` 时使用。

```
(list (channel
       (inherit (car %default-channels))
       (url "https://git.sjtu.edu.cn/sjtug/guix.git")))
```

## Substitute 镜像

镜像地址为 [https://mirrors.sjtug.sjtu.edu.cn/guix](https://mirrors.sjtug.sjtu.edu.cn/guix)。
镜像实现方式为智能缓存，在镜像站用户首次访问某个 nar 或 narinfo 时，它会被永久缓存在镜像上；
之后的访问将直接从镜像服务器返回数据。

* guix命令支持使用 `--substitute-urls` 参数为单个命令的执行临时覆盖substitute服务器，例如：

```shell
guix package -i <package> --substitute-urls="https://mirrors.sjtug.sjtu.edu.cn/guix"
```

* 如果您使用 Guix 管理整个操作系统，请修改操作系统配置文件 ，替换
  `substitute-urls` 参数。例如：

```scheme
(operating-system
  (services (modify-services %desktop-services
              (guix-service-type
               config => (guix-configuration
                          (inherit config)
                          (substitute-urls '("https://mirrors.sjtug.sjtu.edu.cn/guix"
                                             "https://ci.guix.gnu.org"))))))
  ...
  )
```

* 如果您在别的发行版上使用 Guix 包管理器，请修改 `guix-daemon` 的
  `--substitute-urls` 参数。比如修改 `guix-daemon.service` 的 `ExecStart` 为：

```conf
ExecStart=/var/guix/profiles/per-user/root/current-guix/bin/guix-daemon --build-users-group=guixbuild --substitute-urls="https://mirrors.sjtug.sjtu.edu.cn/guix"
```

本文档的编写参考了 [https://guix.org.cn/wiki/mirror/](https://guix.org.cn/wiki/mirror/)
