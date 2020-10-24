+++
title = "docker-registry"
tags = ["mirror-help"]
author = "htfy96"
+++

docker-registry 源是 Docker Hub 的反向代理，可以加速`docker pull`等需要下载镜像的命令。

使用方法：

编辑或新建`/etc/docker/daemon.json`文件，向其中添加`registry-mirrors`项，使最终配置类似：
```json
{
  "registry-mirrors": ["https://docker.mirrors.sjtug.sjtu.edu.cn"]
}
```