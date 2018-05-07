+++
title = "rust-static"
tags = ["mirror-help"]
author = "htfy96"
+++

rust-static储存了rust的工具链及`rustup`本身的镜像。

使用方法：安装`rustup`，将以下环境变量加入`~/.bashrc`或类似文件中：
```sh
export RUSTUP_DIST_SERVER=https://mirrors.sjtug.sjtu.edu.cn/rust-static
export RUSTUP_UPDATE_ROOT=https://mirrors.sjtug.sjtu.edu.cn/rust-static/rustup
```