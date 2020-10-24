+++
title = "fedora"
tags = ["mirror-help"]
author = "htfy96"
+++

Fedora项目是一个由红帽公司所赞助，以统筹Fedora Linux操作系统开发的社区。Fedora 项目在建设开源软件社区的同时构建了一个被称为"Fedora"的 GNU/Linux 发行版。

使用方法：
1. 备份旧的repoList：
```bash
mv /etc/yum.repos.d/fedora.repo /etc/yum.repos.d/fedora.repo.backup 
mv /etc/yum.repos.d/fedora-updates.repo /etc/yum.repos.d/fedora-updates.repo.backup 
```
2. 把`/etc/yum.repos.d/fedora.repo`换成以下内容：

```
[fedora] 
name=Fedora $releasever - $basearch - SJTUG
failovermethod=priority 
baseurl=https://mirrors.sjtug.sjtu.edu.cn/fedora/linux/releases/$releasever/Everything/$basearch/os/ 
#mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=fedora-$releasever&arch=$basearch 
enabled=1 
metadata_expire=7d 
gpgcheck=1 
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$basearch 
 
[fedora-debuginfo] 
name=Fedora $releasever - $basearch - Debug - SJTUG
failovermethod=priority 
baseurl=https://mirrors.sjtug.sjtu.edu.cn/fedora/linux/releases/$releasever/Everything/$basearch/debug/ 
#mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=fedora-debug-$releasever&arch=$basearch 
enabled=0 
metadata_expire=7d 
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$basearch 
 
[fedora-source] 
name=Fedora $releasever - Source - SJTUG
failovermethod=priority 
baseurl=https://mirrors.sjtug.sjtu.edu.cn/fedora/linux/releases/$releasever/Everything/source/SRPMS/ 
#mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=fedora-source-$releasever&arch=$basearch 
enabled=0 
metadata_expire=7d 
gpgcheck=1 
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$basearch 
```
3. 把`/etc/yum.repos.d/fedora-updates.repo`换成以下内容：

```
[updates]
name=Fedora $releasever - $basearch - Updates - SJTUG
failovermethod=priority 
baseurl=https://mirrors.sjtug.sjtu.edu.cn/fedora/linux/updates/$releasever/$basearch/ 
#mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=updates-released-f$releasever&arch=$basearch 
enabled=1 
gpgcheck=1 
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$basearch 
 
[updates-debuginfo] 
name=Fedora $releasever - $basearch - Updates - Debug - SJTUG
failovermethod=priority 
baseurl=https://mirrors.sjtug.sjtu.edu.cn/fedora/linux/updates/$releasever/$basearch/debug/ 
#mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=updates-released-debug-f$releasever&arch=$basearch 
enabled=0 
gpgcheck=1 
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$basearch 
 
[updates-source] 
name=Fedora $releasever - Updates Source - SJTUG
failovermethod=priority 
baseurl=https://mirrors.sjtug.sjtu.edu.cn/fedora/linux/updates/$releasever/SRPMS/ 
#mirrorlist=https://mirrors.fedoraproject.org/metalink?repo=updates-released-source-f$releasever&arch=$basearch 
enabled=0 
gpgcheck=1 
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-fedora-$basearch 
```
4. 运行`dnf makecache`生成缓存