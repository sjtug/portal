+++
title = "flutter_infra"
tags = ["mirror-help"]
author = "htfy96"
+++

## 欢迎使用 SJTUG 镜像设置 Flutter 开发环境

作为国内最早提供 Flutter 的镜像站，我们在近期对镜像站的更新中提高了 Flutter
镜像的稳定性，并解决了部分问题，欢迎大家使用！

Flutter 是 Google 开源的 UI 工具包，帮助开发者通过一套代码库高效构建多平台精美应用，
支持移动、Web、桌面和嵌入式平台。

Flutter 由 Google 主导，全球的开发者共同协作开发。中国的开发者数量占全球的 20%
以上，也有大量贡献者为 Flutter 的生态提供了很大的帮助和贡献。

为了更好帮助国内的开发者、设计师和研究者等使用 Flutter，我们为 Flutter 的使用
提供了加速访问的服务。您需要将开发设备的如下两个环境变量设置指向 SJTUG 镜像：

- `PUB_HOSTED_URL`
- `FLUTTER_STORAGE_BASE_URL`

### Linux 和 macOS 系统设定 Flutter 镜像

执行如下代码：

```
export PUB_HOSTED_URL=https://mirrors.sjtug.sjtu.edu.cn/dart-pub
export FLUTTER_STORAGE_BASE_URL=https://mirrors.sjtug.sjtu.edu.cn
```

### Windows 系统设定 Flutter 镜像

右键单击“我的电脑”，单击“属性” ——> “高级”选项卡 ——> “环境变量”

在 “用户变量” 或 “系统变量” 中：

单击“新建”添加新变量：

- 变量名: `PUB_HOSTED_URL`
- 值: `https://mirrors.sjtug.sjtu.edu.cn/dart-pub`
- 变量名: `FLUTTER_STORAGE_BASE_URL`
- 值: `https://mirrors.sjtug.sjtu.edu.cn`

点击确定，保存生效。如果这两个变量名已经存在，点击编辑可修改变量值。

### 设置 Flutter SDK 仓库镜像

在 `flutter-sdk` 仓库下，执行如下指令即可。

```
git remote set-url origin https://git.sjtu.edu.cn/sjtug/flutter-sdk.git
```

### download.flutter.io 镜像

访问 [https://mirrors.sjtug.sjtu.edu.cn/download.flutter.io/](https://mirrors.sjtug.sjtu.edu.cn/download.flutter.io/) 即可。


## 更多资源

感谢 flutter.cn 对 SJTUG 镜像测试的支持。
更多 Flutter 资源和中文文档，
请访问 Flutter 中文资源网站 ([flutter.cn](https://flutter.cn))
和 Dart 中文文档网站 ([dart.cn](https://dart.cn))。
