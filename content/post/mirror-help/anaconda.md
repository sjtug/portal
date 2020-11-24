+++
title = "anaconda"
tags = ["mirror-help"]
author = "htfy96"
+++

Anaconda 是一种 Python 语言的免费增值开源发行版，用于进行大规模数据处理, 预测分析, 和科学计算, 致力于简化包的管理和部署。Anaconda 使用软件包管理系统 conda 进行包管理。

SJTUG 源镜像了常用的 conda 库，以方便科学计算用户使用。

**Note: 如果您正在从其他镜像源切换到 SJTUG，请检查我们是否同步了你所需要的 repo，以及该 repo 是否支持您使用的平台 (e.g. linux-64)。如果没有，请删除相关配置，并提出新镜像请求。**

**使用说明**

编辑 `~/.condarc`

```
default_channels:
  - https://anaconda.mirrors.sjtug.sjtu.edu.cn/pkgs/r
  - https://anaconda.mirrors.sjtug.sjtu.edu.cn/pkgs/main
custom_channels:
  conda-forge: https://anaconda.mirrors.sjtug.sjtu.edu.cn/cloud/
  pytorch: https://anaconda.mirrors.sjtug.sjtu.edu.cn/cloud/
channels:
  - defaults
```

在 `custom_channels` 中您可以添加下面所列的其他第三方源。我们建议您使用上面的方法配置，而非执行下面的指令。

您也可以使用`conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/{{你所需要的包名}}`来将SJTUG源添加作为这个包的上游。目前镜像的包与安装命令包括：

- **官方源**:
  - `pkgs/free`: `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/pkgs/free`
  - `pkgs/main`: `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/pkgs/main`
  - `pkgs/mro`: `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/pkgs/mro`
  - `pkgs/msys2`: `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/pkgs/msys2`
  - `pkgs/pro`: (deprecated) `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/pkgs/pro`
  - `pkgs/r`: (empty) `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/pkgs/r`
- **第三方源**:
  - `cloud/bioconda`: `conda config --set custom_channels.bioconda https://anaconda.mirrors.sjtug.sjtu.edu.cn/cloud/`
  - `cloud/conda-forge`: `conda config --set custom_channels.conda-forge https://anaconda.mirrors.sjtug.sjtu.edu.cn/cloud/`
  - `cloud/menpo`: `conda config --set custom_channels.menpo https://anaconda.mirrors.sjtug.sjtu.edu.cn/cloud/`
  - `cloud/soumith`: `conda config --set custom_channels.soumith https://anaconda.mirrors.sjtug.sjtu.edu.cn/cloud/`
  - `cloud/viscid-hub`: `conda config --set custom_channels.viscid-hub https://anaconda.mirrors.sjtug.sjtu.edu.cn/cloud/`
  - `cloud/atztogo`: `conda config --set custom_channels.atztogo https://anaconda.mirrors.sjtug.sjtu.edu.cn/cloud/`
  - `cloud/pytorch`: `conda config --set custom_channels.pytorch https://anaconda.mirrors.sjtug.sjtu.edu.cn/cloud/`
  - `cloud/pytorch-test`: `conda config --set custom_channels.pytorch-test https://anaconda.mirrors.sjtug.sjtu.edu.cn/cloud/`

此外，在 Conda 4.7 后，官方的 default 源组默认只包含 main 和 r (windows 会包含 msys2) channel，其他官方源仍支持手动添加。但官方建议不再使用 free channel，详见 [Why We Removed the “Free” Channel in Conda 4.7](https://www.anaconda.com/why-we-removed-the-free-channel-in-conda-4-7/)。
