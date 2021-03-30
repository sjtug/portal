+++
title = "ghcup"
tags = ["mirror-help"]
author = "lightquantum"
date = "2021-03-30T23:50:00+08:00"
+++

Ghcup 是一种用于安装 Haskell 的工具，它使得用户可以轻易地在 GNU/Linux、macOS 和 FreeBSD 上安装特定版本的 ghc，并从零开始搭建好一个全新的 Haskell 开发环境（包括 cabal 与 HLS 支持）。

**使用说明**

创建 `~/.ghcup/config.yaml` 并输入以下内容

```
url-source:
    OwnSource: "https://mirror.sjtu.edu.cn/ghcup/yaml/ghcup/data/ghcup-0.0.4.yaml"
```

如果您尚未安装 ghcup，请在终端中执行以下指令（请不要以 root 用户执行），随后跟随屏幕上的指引完成安装。

- 如果您运行的是 Linux, macOS (Intel), FreeBSD 或 WSL，请执行

```
curl --proto '=https' --tlsv1.2 -LsSf https://mirror.sjtu.edu.cn/ghcup/script/install.sh | sh
```

- 如果您运行的是 macOS (Apple 芯片) 请执行

```
curl --proto '=https' --tlsv1.2 -LsSf https://mirror.sjtu.edu.cn/ghcup/script/install.sh | arch -x86_64 /bin/bash
```
