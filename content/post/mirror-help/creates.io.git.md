+++
title = "git/crates.io-index"
tags = ["mirror-help"]
author = "skyzh"
date = "2020-07-09T01:00:00+08:00"
+++


编辑 `~/.cargo/config`

```
[source]

[source.mirror]
registry = "https://mirrors.sjtug.sjtu.edu.cn/git/crates.io-index/"

[source.crates-io]
replace-with = "mirror"
```
