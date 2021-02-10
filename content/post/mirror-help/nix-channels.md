+++
title = "nix-channels"
tags = ["mirror-help"]
author = "c4droid"
+++

Nix是一个支持Linux和macOS的函数式包管理器，具有原子更新、依赖隔离、构建尽可能可复现等特点。

Nixpkgs是Nix包管理器对应的软件发行版，使用Nix函数式语言编写，除软件包外提供用于软件定制、构建、开发环境配置的工具。

使用方法：

单独安装的Nix：编辑配置文件（系统配置位于`/etc/nix/nix.conf`，用户配置位于`~/.config/nix/nix.conf`）：

```
substituters = https://mirror.sjtu.edu.cn/nix-channels/store https://cache.nixos.org
```

单独安装的Nix在更改完配置文件之后需要重启nix-daemon才能应用配置

NixOS与nix-darwin：编辑配置文件（NixOS配置位于`/etc/nixos/configuration.nix`，nix-darwin配置位于`$HOME/.nixpkgs/darwin-configuration.nix`）：

``` nix
{ config, lib, pkgs, ... }:
{
  ...
  nix.binaryCaches = lib.mkForce [ "https://mirror.sjtu.edu.cn/nix-channels/store" "https://cache.nixos.org" ];
}
```

NixOS与nix-darwin在更改完配置之后需要switch到新配置后生效
