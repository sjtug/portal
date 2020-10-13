+++
title = "git/opam-repository.git"
tags = ["mirror-help"]
author = "skyzh"
date = "2020-10-13T19:00:00+08:00"
+++

[opam](https://opam.ocaml.org) 是 OCaml 的包管理器。SJTUG 提供 opam 的反代服务。

首次使用 opam，可以使用 SJTUG 镜像源初始化 opam。

```
opam init default https://mirrors.sjtug.sjtu.edu.cn/git/opam-repository.git
```

使用下面的指令，可以将默认源替换为 SJTUG 镜像。

```
opam repo set-url default https://mirrors.sjtug.sjtu.edu.cn/git/opam-repository.git --all --set-default
```
