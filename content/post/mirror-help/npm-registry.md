+++
title = "npm-registry"
tags = ["mirror-help"]
author = "htfy96"
+++

npm-registry 源是 NodeJS 的官方包管理 npm 的仓库的反向代理，可以加速`npm install`等需要下载的命令。

使用方法：

- **短期使用**: 在`npm`命令后加上`--registry=https://mirrors.sjtug.sjtu.edu.cn/npm-registry`的参数，即可使用SJTUG源。
- **长期使用**：
  - **Xnix**: 打开`$HOME/.npmrc`，添加以下内容：
  ```
  registry=https://mirrors.sjtug.sjtu.edu.cn/npm-registry
  ```
  即可大幅提升下载速度。
  - **Windows**: 编辑`%USERPROFILE%\.npmrc`，同样加入以上内容即可使用SJTUG镜像源。