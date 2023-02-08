+++
title = "git/homebrew-cask.git"
tags = ["mirror-help"]
author = "htfy96"
+++

homebrew-cask.git镜像了[Homebrew Cask的描述文件，主要包括了较大的二进制文件与macOS应用](https://github.com/Homebrew/homebrew-cask.git)。

*SJTUG镜像同时也提供了`homebrew-core`和`brew-bottles`镜像，欢迎大家使用。*

*若首次安装 homebrew, 请参阅 `brew.git` 的说明。*

使用方法：

```sh
brew tap --custom-remote --force-auto-update homebrew/cask https://mirrors.sjtug.sjtu.edu.cn/git/homebrew-cask.git
```

然后执行：

```sh
brew update
```

另外，现 homebrew 版本将默认使用 API 下载，本镜像源尚不支持这种方式，若使用本镜像请手动关闭该开关。

执行以下语句或加入到`~/.bashrc`中：

```sh
export HOMEBREW_NO_INSTALL_FROM_API=1
```
