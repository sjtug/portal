+++
title = "git/ohmyzsh.git"
tags = ["mirror-help"]
author = "AlexaraWu"
+++

[Oh My Zsh](https://ohmyz.sh/) 是一个由社区驱动的开源框架，用于管理 [zsh](https://www.zsh.org/) 的配置。

## 首次安装 Oh My Zsh

首先，需要确保系统中安装了 zsh 和 git，然后在终端运行以下命令其中之一：

| 方法      | 命令                                                                                                                                                                     |
|:----------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **curl**  | `REPO=sjtug/ohmyzsh REMOTE=https://git.sjtu.edu.cn/${REPO}.git sh -c "$(curl -fsSL https://git.sjtu.edu.cn/sjtug/ohmyzsh/-/raw/master/tools/install.sh\?inline\=false)"` |
| **wget**  | `REPO=sjtug/ohmyzsh REMOTE=https://git.sjtu.edu.cn/${REPO}.git sh -c "$(wget -O- https://git.sjtu.edu.cn/sjtug/ohmyzsh/-/raw/master/tools/install.sh\?inline\=false)"`   |
| **fetch** | `REPO=sjtug/ohmyzsh REMOTE=https://git.sjtu.edu.cn/${REPO}.git sh -c "$(fetch -o - https://git.sjtu.edu.cn/sjtug/ohmyzsh/-/raw/master/tools/install.sh\?inline\=false)"` |

## 替换现有仓库上游

```sh
git -C $ZSH remote set-url origin https://git.sjtu.edu.cn/sjtug/ohmyzsh.git
```
