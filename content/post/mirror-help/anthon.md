+++
title = "anthon"
tags = ["mirror-help"]
author = "grayawa"
+++

安同 OS 是一个由[安同开源社区](https://aosc.io)开发的半滚动 Linux 发行版，支持多种处理器架构。

### 工具修改

请使用以下命令交互式开启/关闭镜像源，输入镜像源名称并使用空格启用/禁用镜像源（请注意：`oma mirror` 允许指定多个镜像源，请注意禁用不需要使用的镜像源）：

```bash
sudo oma mirror
```

关于 `oma mirror` 的更多详细命令和用法，请参考 [oma 的 GitHub 页面](https://github.com/AOSC-Dev/oma?tab=readme-ov-file#command-reference)。

### 如何启用 SJTUG 镜像源

oma 支持使用 `oma mirror add` 命令直接启用特定镜像源；如想要启用 SJTUG 镜像源，可以输入：

```bash
sudo oma mirror add sjtug
```
