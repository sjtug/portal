+++
title = "git/homebrew-core.git"
tags = ["mirror-help"]
author = "htfy96"
+++

homebrew-core.git镜像了[Homebrew官方的软件包描述文件](https://github.com/Homebrew/homebrew-core.git)。

*SJTUG镜像同时也提供了`homebrew-cask`和`brew-bottles`镜像，欢迎大家使用。*

*若首次安装 homebrew, 请参阅 `brew.git` 的说明。*

使用方法：

执行以下语句或加入到`~/.bashrc`中：

```sh
export HOMEBREW_CORE_GIT_REMOTE=https://mirrors.sjtug.sjtu.edu.cn/git/homebrew-core.git
```

然后执行：

```sh
brew tap --custom-remote --force-auto-update homebrew/core https://mirrors.sjtug.sjtu.edu.cn/git/homebrew-core.git
brew update
```

另外，现 homebrew 版本将默认使用 API 下载，本镜像源尚不支持这种方式，若使用本镜像请手动关闭该开关。

执行以下语句或加入到`~/.bashrc`中：

```sh
export HOMEBREW_NO_INSTALL_FROM_API=1
```
