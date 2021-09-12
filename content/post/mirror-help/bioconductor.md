+++
title = "bioconductor"
tags = ["mirror-help"]
author = "MitsuhaMiyamizu"
+++

Bioconductor 为高通量基因组数据的分析和可视化提供开源工具。Bioconductor多数软件包采用R统计编程语言开发。Bioconductor 每年释出两个版本，并有活跃的用户社区。

使用方法：
Bioconductor 镜像源配置文件之一是 .Rprofile (linux 下位于 `~/.Rprofile`, Windows 下位于 `~\library\base\R\Rprofile` )。

在该文件末尾添加如下语句或在R/RStudio终端下键入:

```
options(BioC_mirror="https://mirror.sjtu.edu.cn/bioconductor")
```
即可使用该 Bioconductor 镜像源安装 Bioconductor 软件包。
命令如下:

```
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("$package_name")
```

请访问[官方网站](http://bioconductor.org/)获取更多信息。
