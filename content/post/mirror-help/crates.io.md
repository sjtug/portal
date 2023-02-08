+++
title = "crates.io"
tags = ["mirror-help"]
author = "skyzh"
date = "2020-07-09T01:00:00+08:00"
+++

编辑 `~/.cargo/config.toml`

```
[source]

[source.mirror]
registry = "sparse+https://mirrors.sjtug.sjtu.edu.cn/crates.io-index/"

[source.crates-io]
replace-with = "mirror"
```


若您的 cargo 版本低于 1.68，请使用以下配置

```
[source]

[source.mirror]
registry = "https://mirrors.sjtug.sjtu.edu.cn/git/crates.io-index/"

[source.crates-io]
replace-with = "mirror"
```
