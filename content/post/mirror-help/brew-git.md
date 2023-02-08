+++
title = "git/brew.git"
tags = ["mirror-help"]
author = "htfy96"
+++


本镜像是 Homebrew 自身的仓库，上游为`https://github.com/Homebrew/brew.git`。在`git`相关操作时使用`https://mirrors.sjtug.sjtu.edu.cn/git/brew.git`替代上述地址即可。

*SJTUG镜像同时也提供了`homebrew-core`, `homebrew-cask`和`brew-bottles`镜像，欢迎大家使用。*

使用方法：

执行以下语句或加入到`~/.bashrc`中：

```sh
export HOMEBREW_BREW_GIT_REMOTE=https://mirrors.sjtug.sjtu.edu.cn/git/brew.git
export HOMEBREW_CORE_GIT_REMOTE=https://mirrors.sjtug.sjtu.edu.cn/git/homebrew-core.git
export HOMEBREW_BOTTLE_DOMAIN=https://mirror.sjtu.edu.cn/homebrew-bottles/bottles
```

另外，现 homebrew 版本将默认使用 API 下载，本镜像源尚不支持这种方式，若使用本镜像请手动关闭该开关。

执行以下语句或加入到`~/.bashrc`中：

```sh
export HOMEBREW_NO_INSTALL_FROM_API=1
```

随后正常使用官方脚本安装即可。
