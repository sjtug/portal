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
    OwnSource: "https://mirror.sjtu.edu.cn/ghcup/yaml/ghcup/data/ghcup-0.0.8.yaml"
```

如果您尚未安装 ghcup，请在完成以上步骤后，于终端中执行以下指令（请不要以 root 用户执行），随后跟随屏幕上的指引完成安装。

```
curl --proto '=https' --tlsv1.2 -LsSf https://mirror.sjtu.edu.cn/ghcup/script/install.sh | sh
```

若您希望使用官网的安装器,请执行以下指令

```
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | GHCUP_BASE_URL="https://mirror.sjtu.edu.cn/ghcup/packages/~ghcup" sh
```

**故障排除**

1. ghcup 出现形如 `[ Error ] JSON decoding failed with: AesonException` 的错误

这可能是由于本机 ghcup 版本与配置文件版本不匹配造成。
ghcup 于 0.1.15.1 版本前使用 0.0.4 版本的配置文件，此版本及之后的版本使用 0.0.5+ 版本的配置文件。
请尝试将 `config.yaml` 中的 `ghcup-0.0.6.yaml` 改为 `ghcup-0.0.4.yaml` （抑或反之）后重试。

请注意，ghcup 上游倾向于仅更新最新版本配置文件中的内容，当版本发生变化后请及时更新配置文件版本。

2. 通过 ghcup 安装软件包时出现 `Error: Download failed ...` 错误

这一错误可能是由于您的 ghcup 版本过老，使用的配置文件已经长久未更新，其中包含的软件包版本过旧所致。我们将尽力保留旧版本的软件包，但当存储空间不足时，可能随时删除旧文件。本镜像站仅保证同步最新版本配置文件中包含的软件包。

当出现上述现象时，请首先尝试更新 ghcup 的版本，并根据 `故障排除 1` 的指示修改配置文件。若 ghcup 已无法更新，可以尝试删除 `~/.ghcup` 整个文件夹（这一操作将删除 ghcup 以及所有通过 ghcup 安装的软件），并根据 `使用说明` 重新安装最新版本的 ghcup。

若完成以上步骤后问题仍未解决，请至 [此处](https://github.com/sjtug/mirror-requests) 向我们反馈 BUG。
