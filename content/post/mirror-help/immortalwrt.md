+++
title = "immortalwrt"
tags = ["mirror-help"]
author = "1715173329"
+++

ImmortalWrt 是 OpenWrt 的一个第三方分支，主要针对国人用户开发，提供更多的本地化软件包和设备支持。

使用方法：
修改 `/etc/opkg/distfeeds.conf` 文件，将源地址 `downloads.immortalwrt.org` / `mirrors.vsean.net/openwrt` 修改为
`mirror.sjtu.edu.cn/immortalwrt`，然后运行 `opkg update` 刷新软件包列表。

您也可以登录 LuCI 后台，进入 `系统` -> `软件包` 页面，点击 `配置 opkg` 并按上述说明完成对源地址的更改。
