+++
title = "anaconda"
tags = ["mirror-help"]
author = "htfy96"
+++

Anaconda 是一种Python语言的免费增值开源发行版，用于进行大规模数据处理, 预测分析, 和科学计算, 致力于简化包的管理和部署。Anaconda使用软件包管理系统Conda进行包管理。

SJTUG源镜像了常用的conda库，以方便科学计算用户使用。

**使用说明**: 使用`conda config --add channels https://mirrors.sjtug.sjtu.edu.cn/anaconda/{{你所需要的包名}}`来将SJTUG源添加作为这个包的上游。目前镜像的包与安装命令包括：

- **官方源**:
  - `pkgs/free`: `conda config --add channels https://mirrors.sjtug.sjtu.edu.cn/anaconda/pkgs/free`
  - `pkgs/main`: `conda config --add channels https://mirrors.sjtug.sjtu.edu.cn/anaconda/pkgs/main`
  - `pkgs/mro`: `conda config --add channels https://mirrors.sjtug.sjtu.edu.cn/anaconda/pkgs/mro`
  - `pkgs/msys2`: `conda config --add channels https://mirrors.sjtug.sjtu.edu.cn/anaconda/pkgs/msys2`
  - `pkgs/pro`: (deprecated) `conda config --add channels https://mirrors.sjtug.sjtu.edu.cn/anaconda/pkgs/pro`
  - `pkgs/r`: (empty) `conda config --add channels https://mirrors.sjtug.sjtu.edu.cn/anaconda/pkgs/r`
- **第三方源**:
  - `cloud/bioconda`: `conda config --add channels https://mirrors.sjtug.sjtu.edu.cn/anaconda/cloud/bioconda`
  - `cloud/conda-forge`: `conda config --add channels https://mirrors.sjtug.sjtu.edu.cn/anaconda/conda-forge`
  - `cloud/matsci`: `conda config --add channels https://mirrors.sjtug.sjtu.edu.cn/anaconda/cloud/matsci`
  - `cloud/menpo`: ``conda config --add channels https://mirrors.sjtug.sjtu.edu.cn/anaconda/cloud/menpo`
  - `cloud/soumith`: ``conda config --add channels https://mirrors.sjtug.sjtu.edu.cn/anaconda/cloud/soumith`
  - `cloud/viscid-hub`: `conda config --add channels https://mirrors.sjtug.sjtu.edu.cn/anaconda/cloud/viscid-hub`