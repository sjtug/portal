+++
title = "git/homebrew-core.git"
tags = ["mirror-help"]
author = "htfy96"
+++

homebrew-core.git镜像了[Homebrew官方的软件包描述文件](https://github.com/Homebrew/homebrew-core.git)。

*SJTUG镜像同时也提供了`homebrew-cask`和`brew-bottles`镜像，欢迎大家使用。*

使用方法：
```sh
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.sjtug.sjtu.edu.cn/git/homebrew-core.git
```

然后执行：

```sh
brew update
```