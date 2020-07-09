+++
title = "crates.io"
tags = ["mirror-help"]
author = "skyzh"
+++

编辑 `~/.cargo/config`

```
[source]

[source.mirror]
registry = "https://mirrors.sjtug.sjtu.edu.cn/git/crates.io-index/"

[source.crates-io]
replace-with = "mirror"
```
