+++
title = "fedora-ostree"
tags = ["mirror-help"]
author = "skyzh"
date = "2021-01-04T22:00:00+08:00"
+++

fedora-ostree 是 Fedora Silverblue (原 Atomic Workstation) 的智能缓存。
Fedora Silverblue 通过 rpm-ostree 管理整个系统。
当您第一次请求镜像中的资源时，如果文件没有被镜像服务器缓存，我们会将您重定向回原站，
并在后台进行缓存。目前镜像服务器上已经预先缓存了所有 fedora-ostree 仓库的分支。

使用方法：编辑 `/etc/ostree/remotes.d/fedora.conf`

```plain
[remote "fedora"]
url=https://mirror.sjtu.edu.cn/fedora-ostree
gpg-verify=true
gpgkeypath=/etc/pki/rpm-gpg/
# contenturl=mirrorlist=https://ostree.fedoraproject.org/mirrorlist
```
