+++
date = "2024-02-16T04:00:00+08:00"
title = "新增 registry.k8s.io & 废弃 k8s.gcr.io"
tags = ["mirror-news"]
author="lightquantum"
+++

kubernetes 官方在约一年前退役了 k8s.gcr.io，并将仓库迁移至 registry.k8s.io。如今，我们开始对 registry.k8s.io 的同步，并在 mirrors.sjtug.sjtu.edu.cn/registry.k8s.io 及 registry-k8s-io.mirrors.sjtug.sjtu.edu.cn 两个位置提供服务。

为兼容现有用户，mirrors.sjtug.sjtu.edu.cn/k8s.gcr.io 及 k8s-gcr-io.mirrors.sjtug.sjtu.edu.cn 将被重定向至新位置，旧仓库的使用将不会受到影响。
