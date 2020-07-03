+++
title = "anaconda"
tags = ["mirror-help"]
author = "htfy96"
+++

Anaconda 是一种 Python 语言的免费增值开源发行版，用于进行大规模数据处理, 预测分析, 和科学计算, 致力于简化包的管理和部署。Anaconda 使用软件包管理系统 conda 进行包管理。

SJTUG 源镜像了常用的 conda 库，以方便科学计算用户使用。

**使用说明**: 使用`conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/{{你所需要的包名}}`来将SJTUG源添加作为这个包的上游。目前镜像的包与安装命令包括：

- **官方源**:
  - `pkgs/free`: `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/pkgs/free`
  - `pkgs/main`: `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/pkgs/main`
  - `pkgs/mro`: `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/pkgs/mro`
  - `pkgs/msys2`: `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/pkgs/msys2`
  - `pkgs/pro`: (deprecated) `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/pkgs/pro`
  - `pkgs/r`: (empty) `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/pkgs/r`
- **第三方源**:
  - `cloud/bioconda`: `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/cloud/bioconda`
  - `cloud/conda-forge`: `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/cloud/conda-forge`
  - `cloud/menpo`: `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/cloud/menpo`
  - `cloud/soumith`: `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/cloud/soumith`
  - `cloud/viscid-hub`: `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/cloud/viscid-hub`
  - `cloud/atztogo`: `conda config --add channels https://anaconda.mirrors.sjtug.sjtu.edu.cn/cloud/atztogo`

如果您在使用时出现了找不到 `.conda` 的[问题](https://github.com/sjtug/mirror-requests/issues/56)，请参考[这个解决方案](https://github.com/sjtug/sjtug.github.io/issues/12)。

此外，在 Conda 4.7 后，官方的 default 源组默认只包含 main 和 r (windows 会包含 msys2) channel，其他官方源仍支持手动添加。但官方建议不再使用 free channel，详见 [Why We Removed the “Free” Channel in Conda 4.7](https://www.anaconda.com/why-we-removed-the-free-channel-in-conda-4-7/)。
