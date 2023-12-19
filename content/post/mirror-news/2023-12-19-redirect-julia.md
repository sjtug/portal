+++
date = "2023-12-19T02:20:00-08:00"
title = "致远服务器失去同步 & 重定向 julia 镜像"
tags = ["mirror-news"]
author="lightquantum"
+++

由于致远服务器 (mirrors.sjtug.sjtu.edu.cn) 存储盘满，其上所有仓库于 2 天前同步中断。我们正在释放存储空间，受影响的仓库预计会在 12 小时内恢复同步。

另，由于 julia 仓库占用空间极大 (6TB)，用户量较低，我们正在考虑将其同步方式转换为反向代理+缓存。在转换期间，所有指向 julia 镜像的流量将会被重定向至北京大学开源镜像站 (https://mirrors.pku.edu.cn/)。在此感谢北京大学开源镜像站的协助！
