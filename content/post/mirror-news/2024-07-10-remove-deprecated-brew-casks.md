+++
date = "2024-07-10T03:00:00+08:00"
title = "移除废弃的 Homebrew 分支镜像 & 维护简报"
tags = ["mirror-news"]
author="lightquantum"
+++

在 5 月我们曾通知您，我们将移除 Linuxbrew Core 镜像。现在由于 Homebrew Cask Drivers, Homebrew Cask Fonts 及 Homebrew Cask Versions 已经被合并入 Homebrew Cask，我们决定同时移除这些镜像。若您的 Linuxbrew 在近 1 年内未更新过，可能会受到影响。

另，近期我们对镜像进行了以下维护操作：
- 修复了 CVE-2024-6387
- 将 Zhiyuan 服务器从 Fedora 38 升级至 Fedora 40
- 新增 [racket 安装器镜像](https://mirror.sjtu.edu.cn/racket/)
- 新增 [intel-extension-for-pytorch](https://mirror.sjtu.edu.cn/github/intel-extension-for-pytorch) 镜像 ([mirror-requests#364](https://github.com/sjtug/mirror-requests/issues/364))
- 修复 ghcup 签名问题 ([mirror-requests#365](https://github.com/sjtug/mirror-requests/issues/365))

如有任何问题或建议，请随时联系我们。感谢您的支持与关注！
