+++
title = "openEuler"
tags = ["mirror-help"]
author = "zhang-jian-jun"
+++

openEuler 是一个开源、免费的 Linux 发行版，将通过开放的社区形式与全球的开发者共同构建一个开放、
多元和架构包容的软件生态体系。

同时，openEuler 也是一个创新的平台，鼓励任何人在该平台上提出新想法、开拓新思路、实践新方案。

## 配置方法

openEuler 源包含多个版本，假定您需要使用 openEuler-20.09 版本，在 yum 源目录(`/etc/yum.repos.d/`)下新增 openEuler.repo 文件，
注意文件中的 `openEuler-20.09` 路径:

```
[OS]
name=OS
baseurl=https://mirror.sjtu.edu.cn/openeuler/openEuler-20.09/OS/$basearch/
enabled=1
gpgcheck=1
gpgkey=https://mirror.sjtu.edu.cn/openeuler/openEuler-20.09/OS/$basearch/RPM-GPG-KEY-openEuler
[everything]
name=everything
baseurl=https://mirror.sjtu.edu.cn/openeuler/openEuler-20.09/everything/$basearch/
enabled=1
gpgcheck=1
gpgkey=https://mirror.sjtu.edu.cn/openeuler/openEuler-20.09/everything/$basearch/RPM-GPG-KEY-openEuler
[EPOL]
name=EPOL
baseurl=https://mirror.sjtu.edu.cn/openeuler/openEuler-20.09/EPOL/$basearch/
enabled=1
gpgcheck=1
gpgkey=https://mirror.sjtu.edu.cn/openeuler/openEuler-20.09/EPOL/$basearch/RPM-GPG-KEY-openEuler
[debuginfo]
name=debuginfo
baseurl=https://mirror.sjtu.edu.cn/openeuler/openEuler-20.09/debuginfo/$basearch/
enabled=1
gpgcheck=1
gpgkey=https://mirror.sjtu.edu.cn/openeuler/openEuler-20.09/debuginfo/$basearch/RPM-GPG-KEY-openEuler
[source]
name=source
baseurl=https://mirror.sjtu.edu.cn/openeuler/openEuler-20.09/source/
enabled=1
gpgcheck=1 
gpgkey=https://mirror.sjtu.edu.cn/openeuler/openEuler-20.09/source/RPM-GPG-KEY-openEuler
```

正常执行 `yum update` 和 `yum install` 即可。如果您在使用的过程中遇到任何问题，可以直接联系 openEuler
社区 [admin@openeuler.io](mailto:admin@openeuler.io)，也可以通过 GitHub 向 SJTUG 反馈 bug。



