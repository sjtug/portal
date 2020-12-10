+++
title = "guix"
tags = ["mirror-help"]
author = "pengmeiyu"
+++

[GNU/Guix](https://guix.gnu.org/)是隶属于GNU项目的自由软件发行版。Guix可以作为独立的操作系统发行版安装在计算机上，可以作为软件包管理器安装在别的Linux发行版上。
它的核心是一个函数式软件包管理器，支持事务性的升级、回滚操作。用户可以通过
[Guile](https://www.gnu.org/software/guile/)语言编写配置文件管理操作系统的服务或者管理用户安装的软件。

软件源使用方法：

* 如果你使用Guix管理整个操作系统，请修改操作系统配置文件 ，替换
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

* 如果你在别的发行版上使用Guix包管理器，请修改 `guix-daemon` 的
  `--substitute-urls` 参数。比如修改 `guix-daemon.service` 的 `ExecStart` 为：

```conf
ExecStart=/var/guix/profiles/per-user/root/current-guix/bin/guix-daemon --build-users-group=guixbuild --substitute-urls="https://mirrors.sjtug.sjtu.edu.cn/guix"
```

目前 SJTUG guix 镜像支持 install 操作。weather 由于未知原因可能会失败。欢迎大家使用。
