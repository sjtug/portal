+++
title = "alhp"
tags = ["mirror-help"]
author = "Misaka13514"
+++

ALHP 是一个基于 Arch Linux 官方软件仓库使用 [LTO（链接时优化）](https://en.wikipedia.org/wiki/Interprocedural_optimization)、不同的 [x86-64 特性级别](https://www.phoronix.com/scan.php?page=news_item&px=GCC-11-x86-64-Feature-Levels)和 `-O3` 提供构建的非官方用户仓库。

完整的包信息列表（包名称/架构/维护者/状态）请[点击这里](https://status.alhp.dev)查看。

仓库主地址：https://somegit.dev/ALHP/ALHP.GO

以下内容翻译并修改自 [ALHP README](https://somegit.dev/ALHP/ALHP.GO/src/branch/main/README.md)，建议查阅原文以获取最新信息。

## 快速入门

### 1. 检查系统支持

> **重要**：在启用任何仓库之前，请检查您的系统是否支持您想要启用的特性级别（例如 `x86-64-v3`）。
> **如果不提前检查，可能会导致您的系统无法启动，并且您将需要降级任何您可能已经升级的软件包。**

使用以下命令检查 CPU 支持的特性级别：

```bash
/lib/ld-linux-x86-64.so.2 --help
```

支持 `x86-64-v3` 的系统输出片段示例：

```
Subdirectories of glibc-hwcaps directories, in priority order:
  x86-64-v4
  x86-64-v3 (supported, searched)
  x86-64-v2 (supported, searched)
```

### 2. 安装密钥环和镜像列表

从 **AUR** 安装 [alhp-keyring](https://aur.archlinux.org/packages/alhp-keyring/) 和 [alhp-mirrorlist](https://aur.archlinux.org/packages/alhp-mirrorlist/)。

使用 `yay` 安装的示例：

```bash
yay -S alhp-keyring alhp-mirrorlist
```

`alhp-keyring` 提供 ALHP 当前使用的签名密钥，`alhp-mirrorlist` 提供一组镜像列表供选择。

### 3. 选择上海交通大学软件源镜像

编辑 `/etc/pacman.d/alhp-mirrorlist` 在**顶部**添加上海交通大学软件源镜像并注释/取消注释您希望禁用/启用的镜像：

```editorconfig
##
## ALHP repository mirrorlist
## Updated on YYYY-MM-DD
## https://somegit.dev/ALHP/alhp-mirrorlist
##
## There is an IPFS mirror available.
## Setup instructions in /etc/pacman.d/alhp-mirrorlist.ipfs.
##

Server = https://mirror.sjtu.edu.cn/alhp/$repo/os/$arch/

## Worldwide (Cloudfare)
# Server = https://alhp.krautflare.de/$repo/os/$arch/
...
```

> 注意：仅 `alhp.dev` 由 ALHP 直接托管。
> 如果您使用某个镜像时发生问题，请在 [ALHP 镜像列表仓库](https://somegit.dev/ALHP/alhp-mirrorlist)中提交 issue。
> 如果您使用上海交通大学软件源镜像时发生问题，请[反馈 Bug](https://github.com/sjtug/mirror-requests/issues/new/choose)。

### 4. 修改 /etc/pacman.conf

在您的 Arch Linux 官方仓库**之上**添加相应的 ALHP 仓库。

以 `x86-64-v3` 为例：

```editorconfig
[core-x86-64-v3]
Include = /etc/pacman.d/alhp-mirrorlist

[extra-x86-64-v3]
Include = /etc/pacman.d/alhp-mirrorlist

[core]
Include = /etc/pacman.d/mirrorlist

[extra]
Include = /etc/pacman.d/mirrorlist

# 如果需要 [multilib] 支持
[multilib-x86-64-v3]
Include = /etc/pacman.d/alhp-mirrorlist

[multilib]
Include = /etc/pacman.d/mirrorlist
```

将 `x86-64-v3` 替换为您希望启用的 x86-64 特性级别。

> ALHP 目前为 `x86-64-v2`、`x86-64-v3` 和 `x86-64-v4` 构建。
> 您可以在[这里](https://mirror.sjtu.edu.cn/alhp/)查看所有可用的仓库。

### 5. 更新软件包数据库并升级：

```
pacman -Suy
```

## FAQ

### 移除 ALHP 软件包

要禁用 ALHP，删除 `/etc/pacman.conf` 中所有 _x86-64-vX_ 条目，并删除 `alhp-keyring` 和 `alhp-mirrorlist`。

之后，使用以下命令刷新 pacman 的数据库并降级所有软件包：

```
pacman -Suuy
```

### LTO

对 2021 年 11 月 4 日 12:07:00 UTC 之后构建的所有软件包启用。
[点此查看更多详细信息](https://somegit.dev/ALHP/ALHP.GO/issues/52)。
在软件包状态页面上可以看到每个包的 LTO 状态。

### Linux 内核软件包

ALHP 在构建内核软件包时使用了 `KCFLAGS`/`KCPPFLAGS` 的额外标志。

### 直接链接的内核模块

由于 pkgrel 的增加，构建内核软件包**会破坏所有直接链接的内核模块**，例如 `nvidia`（不是 `nvidia-dkms`）或 `virtualbox-host-modules-arch`（不是 `virtualbox-host-dkms`）。**它们各自的 `dkms` 变体不受影响**。这个问题正在 [ALHP/ALHP.GO#68](https://somegit.dev/ALHP/ALHP.GO/issues/68) 中跟踪，正在研究解决方案。

### 镜像

您想镜像 ALHP 吗？欢迎您这样做，[请参阅 alhp-mirrorlist](https://somegit.dev/ALHP/alhp-mirrorlist#how-to-become-a-mirror)。

### ALHP 构建了哪些软件包

除了所有 'any' 架构软件包之外，被[排除](https://www.reddit.com/r/archlinux/comments/oflged/alhp_archlinux_recompiled_for_x8664v3_experimental/h4fkinu?utm_source=share&utm_medium=web2x&context=3)构建的软件包列在 [ALHP/ALHP.GO#16](https://somegit.dev/ALHP/ALHP.GO/issues/16) 中。
此外，还可以在[软件包状态页面](https://status.alhp.dev)上查看（搜索 `blacklisted`）。

### 为什么某个软件包没有更新

同样适用于：**我找不到某个软件包/某个软件无法启动，因为它链接到旧的/新的库**

ALHP 在官方 Arch Linux 仓库中发布软件包**之后**进行构建（不包括 `[*-testing]`）。如果当前批次包含许多软件包或需要较长时间构建的软件包（例如 `chromium`），这可能导致软件包延迟。
您可以随时在[软件包状态页面](https://status.alhp.dev)上查看当前构建周期的进度。
请勿因当前排队的软件包/尚未构建/尚未移至仓库的软件包而提交 issue。
请记住，在 ALHP 当前的构建硬件上，大规模重建（如 `openssl` 或 `python`）可能需要数天才能完成。

### 调试符号

ALHP 提供一个位于 `debuginfod.alhp.dev` 的 debuginfod 实例。

要使用它，请在您的系统上安装 `debuginfod` 并将其添加到您的 `DEBUGINFOD_URLS`，如下所示：

```bash
echo "https://debuginfod.alhp.dev" > /etc/debuginfod/alhp.urls
```

### 在不同特性级别仓库之间切换

如果您想在不同特性级别之间切换，例如从 `x86-64-v3` 切换到 `x86-64-v4`，您需要首先恢复为官方软件包，然后再次启用所需的仓库。

1. 注释或删除 `/etc/pacman.conf` 中的 ALHP 存储库条目。
2. 使用 `pacman -Suuy` 降级软件包。
3. 使用 `pacman -Scc` 清除 pacman 的包缓存。
4. 取消注释/添加所需的存储库到 `/etc/pacman.conf` 并使用 `pacman -Suy` 进行更新。

## Matrix

有关非问题性质的任何问题，或者如果您只想聊天，ALHP [在 Matrix 上有一个房间](https://matrix.to/#/#alhp:ofsg.eu)（#alhp@ofsg.eu）。您也可以在 `#archlinux:archlinux.org` 中找到 @idlegandalf。

## 捐赠

作者感激您提供的任何捐款，但捐赠是完全自愿的。捐款主要用于支付服务器费用。还请考虑[捐赠给 **Arch Linux 团队**](https://archlinux.org/donate/)，没有他们的工作，ALHP 将无法实现。

[![使用 Liberapay 捐赠](https://liberapay.com/assets/widgets/donate.svg)](https://liberapay.com/anonfunc/)

## 许可证和法律

该项目及其所有源文件根据 GNU 通用公共许可证第 2 版（或更高版本）的条款发布。有关详细信息，请参阅 [LICENSE](https://somegit.dev/ALHP/ALHP.GO/src/branch/master/LICENSE)。
