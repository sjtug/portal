+++
title = "flathub"
tags = ["mirror-help"]
author = "skyzh"
date = "2021-01-04T22:00:00+08:00"
+++

Flathub 镜像是 [flathub.org](https://flathub.org) 的智能缓存。当您请求镜像中的资源时，
如果文件没有被镜像服务器缓存，我们会将您重定向回原站，并在后台进行缓存。
目前镜像服务器上已经预先缓存了所有 Flathub 软件的分支。

使用方法：

```bash
sudo flatpak remote-modify flathub --url=https://mirror.sjtu.edu.cn/flathub
```

如果出现错误可尝试：

```bash
wget https://mirror.sjtu.edu.cn/flathub/flathub.gpg
sudo flatpak remote-modify --gpg-import=flathub.gpg flathub
```

目前 sel.flathub.org 已经重定向到 SJTUG 镜像站。如果您原先使用该服务器作为 Flathub 上游，
无需做任何设置即可使用。

Flathub 中部分软件由于重分发授权问题，需要从官方服务器下载，无法使用镜像站加速。比如
NVIDIA 驱动、JetBrains 系列软件等。如果您的使用体验不佳，请及时通过 GitHub 或邮件向我们反馈。

如果您中断了某次安装，重新下载可能会出现找不到文件的问题。您可以使用 `flatpak repair` 解决相关的问题。
