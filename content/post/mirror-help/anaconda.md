+++
title = "anaconda"
tags = ["mirror-help"]
author = "htfy96"
+++

Anaconda 是一种Python语言的免费增值开源发行版，用于进行大规模数据处理, 预测分析, 和科学计算, 致力于简化包的管理和部署。Anaconda使用软件包管理系统Conda进行包管理。

SJTUG源镜像了常用的conda附加库，以方便科学计算用户使用。

**使用说明**: 使用`conda config --add channels https://mirrors.sjtug.sjtu.edu.cn/anaconda/{{你所需要的包名}}`来将SJTUG源添加作为这个包的上游。目前镜像的包包括：

```
pkgs/free
pkgs/main
pkgs/mro
pkgs/msys2
pkgs/pro
pkgs/r
cloud/bioconda
cloud/conda-forge
cloud/matsci
cloud/menpo
cloud/soumith
```