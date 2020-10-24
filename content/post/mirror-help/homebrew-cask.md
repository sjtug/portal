+++
title = "git/homebrew-cask.git"
tags = ["mirror-help"]
author = "htfy96"
+++

homebrew-cask.git镜像了[Homebrew Cask的描述文件，主要包括了较大的二进制文件与macOS应用](https://github.com/Homebrew/homebrew-cask.git)。

*SJTUG镜像同时也提供了`homebrew-core`和`brew-bottles`镜像，欢迎大家使用。*

使用方法：
```sh
cd "$(brew --repo)"/Library/Taps/homebrew/homebrew-cask
git remote set-url origin https://mirrors.sjtug.sjtu.edu.cn/git/homebrew-cask.git
```

然后执行：

```sh
brew update
```
