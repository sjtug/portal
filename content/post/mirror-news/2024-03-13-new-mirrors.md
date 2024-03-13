+++
date = "2024-03-13T15:30:00+08:00"
title = "新增若干新镜像"
tags = ["mirror-news"]
author="lightquantum"
+++

近两年来，我站添加了若干新的仓库，以更好地满足老师与同学们的学术、工作及生活需求

Aug 2021 - 2022:
* debian-ports ([PR #281](https://github.com/sjtug/mirror-docker-unified/pull/281))
* homebrew-bundle.git ([PR #288](https://github.com/sjtug/mirror-docker-unified/pull/288))

2023 - 2024:
* crates.io sparse index ([PR #358](https://github.com/sjtug/mirror-docker-unified/pull/358))
* opencloudos
* termux ([PR #386](https://github.com/sjtug/mirror-docker-unified/pull/386))
* openkylin ([PR #385](https://github.com/sjtug/mirror-docker-unified/pull/385))
* immortalwrt ([PR #392](https://github.com/sjtug/mirror-docker-unified/pull/392))
* pop-os ([PR #394](https://github.com/sjtug/mirror-docker-unified/pull/394))
* packman ([PR #398](https://github.com/sjtug/mirror-docker-unified/pull/398))
* debian-cdimage ([PR #403](https://github.com/sjtug/mirror-docker-unified/pull/403))
* leopard.sh ([PR #414](https://github.com/sjtug/mirror-docker-unified/pull/414))
* anthon ([PR #419](https://github.com/sjtug/mirror-docker-unified/pull/419))
* endeavouros ([PR #426](https://github.com/sjtug/mirror-docker-unified/pull/426))
* elan ([PR #427](https://github.com/sjtug/mirror-docker-unified/pull/427)) & lean4 ([PR #428](https://github.com/sjtug/mirror-docker-unified/pull/428), 在此感谢 [@alissa-tung](https://github.com/alissa-tung) ([@timechess](https://github.com/timechess) 的协助！)
* Office Tool Plus ([PR #444](https://github.com/sjtug/mirror-docker-unified/pull/444))
* nspawn ([PR #446](https://github.com/sjtug/mirror-docker-unified/pull/446))

2024 -:
* alhp ([PR #459](https://github.com/sjtug/mirror-docker-unified/pull/459))
* registry.k8s.io ([PR #461](https://github.com/sjtug/mirror-docker-unified/pull/461))
* bmclapi ([PR #462](https://github.com/sjtug/mirror-docker-unified/pull/462))

同时，我们也适当下架了一些利用率较低或已被废弃的镜像

2022 - 2023:
- linuxbrew-bottles ([PR #311](https://github.com/sjtug/mirror-docker-unified/pull/311))
- download.flutter.io ([PR #332](https://github.com/sjtug/mirror-docker-unified/pull/332))
- mageia ([PR #333](https://github.com/sjtug/mirror-docker-unified/pull/333))

2024 -:
- k8s.gcr.io ([PR #461](https://github.com/sjtug/mirror-docker-unified/pull/461))
- scientificlinux ([PR #457](https://github.com/sjtug/mirror-docker-unified/pull/457))

此外，我们也对架构进行了综合升级
- 将更多仓库接入对象存储，依托交大云对象存储实现扩容与更灵活高效的服务 ([rsync-sjtug](https://github.com/sjtug/rsync-sjtug))
- 支持 mirrorz，为用户提供更智能的分流及更友好的帮助服务 ([mirrorz](https://mirrorz.org/) 及 [mirrorz-help](https://help.mirrors.cernet.edu.cn/)，在此感谢 [@ZenithalHourlyRate](https://github.com/ZenithalHourlyRate) 及 [@taoky](https://github.com/taoky) 的协助)
- Siyuan 镜像服务器升级至 Debian 12，Zhiyuan 镜像服务器升级至 Fedora 38

欢迎大家使用。
