+++
title = "nix-channels/store"
tags = ["mirror-help"]
author = "c4droid"
+++

Nix 是一个支持 Linux 和 macOS 的函数式包管理器，具有原子更新、依赖隔离、构建尽可能可复现等特点。

Nixpkgs 是 Nix 包管理器对应的软件发行版，使用 Nix 函数式语言编写，除软件包外提供用于软件定制、构建、开发环境配置的工具。

使用方法：

单独安装的 Nix：编辑配置文件（系统配置位于 `/etc/nix/nix.conf`，用户配置位于 `~/.config/nix/nix.conf`）：

```
substituters = https://mirror.sjtu.edu.cn/nix-channels/store https://cache.nixos.org
```

单独安装的 Nix 在更改完配置文件之后需要重启 nix-daemon 才能应用配置。

NixOS 与 nix-darwin：编辑配置文件（一般来说，NixOS 配置位于 `/etc/nixos/configuration.nix`，nix-darwin 配置位于 `$HOME/.nixpkgs/darwin-configuration.nix`，如果你手动指定了 `NIX_PATH` 或是使用 Flakes 管理系统，请根据具体情况编辑对应的文件）：

对于 NixOS 21.11（及之前的版本）与 nix-darwin：

``` nix
{ config, lib, pkgs, ... }:
{
  nix.binaryCaches = [ "https://mirror.sjtu.edu.cn/nix-channels/store" ];
}
```

对于 NixOS 22.05（及之后的版本）：

``` nix
{ config, lib, pkgs, ... }:
{
  nix.settings.substituters = [ "https://mirror.sjtu.edu.cn/nix-channels/store" ];
}
```

NixOS 与 nix-darwin 在更改完配置之后需要 switch 到新配置后生效。
