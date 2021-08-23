+++
title = "docker-ce"
tags = ["mirror-help"]
author = "hmsjy2017"
date = "2021-08-21T00:33:00+08:00"
+++


# Docker Community Edition 镜像使用帮助

**注意: 本镜像只提供 Debian/Ubuntu/Fedora/CentOS/RHEL 的 docker 软件包，非 dockerhub**


## Debian/Ubuntu 用户

以下内容根据 [TUNA文档](https://mirrors.tuna.tsinghua.edu.cn/help/docker-ce/) 修改而来。

如果你过去安装过 docker，先删掉:

```bash
sudo apt-get remove docker docker-engine docker.io
```

首先安装依赖:

```bash
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common
```
根据你的发行版，下面的内容有所不同。你使用的发行版：
<details><summary>Debian</summary>
信任 Docker 的 GPG 公钥:
<pre>curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -</pre>
对于 amd64 架构的计算机，添加软件仓库:
<pre>
sudo add-apt-repository \
   "deb [arch=amd64] https://mirror.sjtu.edu.cn/docker-ce/linux/debian \
   $(lsb_release -cs) \
   stable"
</pre>
如果你用的是树莓派或其它ARM架构计算机，请运行:
<pre>
echo "deb [arch=armhf] https://mirror.sjtu.edu.cn/docker-ce/linux/debian \
     $(lsb_release -cs) stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list
</pre>
最后安装
<pre>
sudo apt-get update
sudo apt-get install docker-ce
</pre>
</details>

<details><summary>Ubuntu</summary>
信任 Docker 的 GPG 公钥:
<pre>curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -</pre>
对于 amd64 架构的计算机，添加软件仓库:
<pre>
sudo add-apt-repository \
   "deb [arch=amd64] https://mirror.sjtu.edu.cn/docker-ce/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
</pre>
如果你用的是树莓派或其它ARM架构计算机，请运行:
<pre>
echo "deb [arch=armhf] https://mirror.sjtu.edu.cn/docker-ce/linux/ubuntu \
     $(lsb_release -cs) stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list
</pre>
最后安装
<pre>
sudo apt-get update
sudo apt-get install docker-ce
</pre>
</details>

## Fedora/CentOS/RHEL
以下内容根据[TUNA文档](https://mirrors.tuna.tsinghua.edu.cn/help/docker-ce/)修改而来。

如果你之前安装过 docker，请先删掉
```bash
sudo yum remove docker docker-common docker-selinux docker-engine
```
安装一些依赖
```bash
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
```
根据你的发行版下载repo文件:  
<details><summary>CentOS/RHEL</summary>
<pre>
wget -O /etc/yum.repos.d/docker-ce.repo https://download.docker.com/linux/centos/docker-ce.repo
</pre>
</details>

<details><summary>Fedora</summary>
<pre>
wget -O /etc/yum.repos.d/docker-ce.repo https://download.docker.com/linux/fedora/docker-ce.repo
</pre>
</details>

把软件仓库地址替换为 SJTUG:
<pre>
sudo sed -i 's+download.docker.com+mirror.sjtu.edu.cn/docker-ce+' /etc/yum.repos.d/docker-ce.repo
</pre>
最后安装:
<pre>
sudo yum makecache fast
sudo yum install docker-ce
</pre>
