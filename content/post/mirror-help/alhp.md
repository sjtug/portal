+++
title = "alhp"
tags = ["mirror-help"]
author = "Misaka13514"
+++

ALHP 是一个基于 Arch Linux 官方软件仓库使用 [LTO（链接时优化）](https://en.wikipedia.org/wiki/Interprocedural_optimization)、不同的 [x86-64 特性级别](https://www.phoronix.com/scan.php?page=news_item&px=GCC-11-x86-64-Feature-Levels)和 `-O3` 提供构建的非官方用户仓库。

完整的包信息列表（包名称/架构/维护者/状态）请[点击这里](https://status.alhp.dev)查看。

仓库主地址：https://somegit.dev/ALHP/ALHP.GO

以下内容翻译并修改自 [ALHP README](https://somegit.dev/ALHP/ALHP.GO/src/branch/main/README.md)，有删减，建议查阅原文以获取最新信息。

## 使用方法

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

> **注意**：直接链接的内核模块可能无法正常工作，请使用 `dkms` 变种，详见 [ALHP/ALHP.GO#68](https://somegit.dev/ALHP/ALHP.GO/issues/68)。

## 移除方法

要禁用 ALHP，删除 `/etc/pacman.conf` 中所有 _x86-64-vX_ 条目，并删除 `alhp-keyring` 和 `alhp-mirrorlist`。

之后，使用以下命令刷新 pacman 的数据库并降级所有软件包：

```
pacman -Suuy
```

## 在不同特性级别仓库之间切换

如果您想在不同特性级别之间切换，例如从 `x86-64-v3` 切换到 `x86-64-v4`，您需要首先恢复为官方软件包，然后再次启用所需的仓库。

1. 注释或删除 `/etc/pacman.conf` 中的 ALHP 存储库条目。
2. 使用 `pacman -Suuy` 降级软件包。
3. 使用 `pacman -Scc` 清除 pacman 的包缓存。
4. 取消注释/添加所需的存储库到 `/etc/pacman.conf` 并使用 `pacman -Suy` 进行更新。
