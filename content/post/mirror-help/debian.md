+++
title = "debian"
tags = ["mirror-help"]
author = "htfy96"
+++

Debian 是完全由自由软件组成的类UNIX操作系统，其包含的多数软件使用GNU通用公共许可协议授权，并由Debian计划的参与者组成团队对其进行打包、开发与维护。Debian以其坚守Unix和自由软件的精神，以及其给予用户的众多选择而闻名。现时Debian提供了超过25,000个软件[9]，超过50,000个软件包[10]，并正式支持10个计算机系统结构。

### 使用方法：

-  一键替换
```
sudo sed -i "s|http://deb.debian.org/debian|https://mirrors.sjtug.sjtu.edu.cn/debian|g" /etc/apt/sources.list
```
- 手动替换

先安装 ca-certificates apt-transport-https 保证第三方https源可以使用。

再打开` /etc/apt/sources.list`，将类似于`http://deb.debian.org/debian/`的地址均替换为`https://mirrors.sjtug.sjtu.edu.cn/debian/`即可。
